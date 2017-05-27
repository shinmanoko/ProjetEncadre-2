#!/usr/bin/perl
<<DOC;
Votre Nom :
JANVIER 2005
 usage : perl parcours-arborescence-fichiers repertoire-a-parcourir
 Le programme prend en entree le nom du repertoire contenant les fichiers
 a traiter
 Le programme construit en sortie un fichier structure contenant sur chaque
 ligne le nom du fichier et le resultat du filtrage :
<FICHIER><NOM>du fichier</NOM></FICHIER><CONTENU>du filtrage</CONTENU></FICHIER>
DOC
#-----------------------------------------------------------
my $rep="$ARGV[0]";
my $rubrique="$ARGV[1]";
my %memoire=();

$rep=~ s/[\/]$//;
print "le Repertoire est: ",$rep;

open my $out, ">:encoding(utf-8)", "$rubrique.txt";
open my $out1, ">:encoding(utf-8)", "$rubrique.xml";
print $out1 "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n";
print $out1 "<PARCOURS>\n";
print $out1 "<NOM>Votre nom</NOM>\n";
print $out1 "<FILTRAGE>\n";

&parcoursarborescencefichiers($rep);

print $out1 "</FILTRAGE>\n";
print $out1 "</PARCOURS>\n";
close $out;
close $out1;
#-----------------------------------------------------------


#-----------------------------------------------------------
sub parcoursarborescencefichiers {
    my $path = shift(@_);
    opendir(DIR, $path) or die "can't open $path: $!\n";
    my @files = readdir(DIR);
    closedir(DIR);
    foreach my $file (@files) {
		next if $file =~ /^\.\.?$/;
		$file = $path."/".$file;
		if (-d $file) {
			&parcoursarborescencefichiers($file);
		}
		if (-f $file) {
			if ($file=~/$rubrique.+\.xml$/){
				#print "<",$i++,"> ==>",$file,"jjijijijijij\n";
				open my $input,"<:encoding(utf-8)",$file or die $!;
				my $texte="";
				while (my $ligne = <$input>) {
					chomp $ligne;
					$ligne =~ s/\r//g;
					$texte = $texte . $ligne;
				}
				$texte =~ s/>\s+</></g;
				$texte =~s/&#38;#39;/'/g;
        #print $texte;
				while ($texte =~m/<item>.*?<title>([^<]+?)<\/title>.*?<description>([^<]+?)<\/description>/g) {
          print $1;
					my $titre = $1;
					my $description = $2;
					$description=~s/&lt;.+&gt;$//g;
					$titre=~s/&lt;.+?&gt;//g;
					if (!(exists $memoire{$titre})){
						my ($xmltitre,$xmldescription)=&etiquette($titre,$description);
            #print "the titsssssssss", $xmltitre;
						print $out "$titre.\n";
						print $out "$description\n\n";
						print $out1 "<item><titre>$xmltitre</titre><description>$xmldescription</description></item>\n";
						$memoire{$titre}=1;
					}
				}
				close $input;
			}
		}
    }
}
#-----------------------------------------------------------
#-----------------------------------------------------------
sub etiquette {

  my $titre1=shift(@_);#$_[0]
  my $description1=shift(@_);#$_[1]

  open (TMP, ">:encoding(utf-8)","toto.txt");
  print TMP $titre1;
  system("perl tokenise-utf8.pl toto.txt | ./tree-tagger -token -lemma -no-unknown french-utf-8.par > fic_eticte1.txt");
  system("./treetagger2xml-utf8-macosx fic_eticte1.txt utf8");
  close TMP;
  open (FIC, "<:encoding(utf-8)","fic_eticte1.txt.xml");
  $premiereligne=<FIC>;
  my $titrexml="";
  while (my $ligne=<FIC>){
    $titrexml=$titrexml.$ligne;
  }
  close FIC;

  open (TMP, ">:encoding(utf-8)","toto.txt");
  print TMP $description1;
  system("perl tokenise-utf8.pl toto.txt | ./tree-tagger -token -lemma -no-unknown french-utf-8.par > fic_eticte2.txt");
  system("./treetagger2xml-utf8-macosx fic_eticte2.txt utf8");
  close TMP;
  open (FIC, "<:encoding(utf-8)","fic_eticte2.txt.xml");
  $premiereligne=<FIC>;
  my $descriptionxml="";
  while (my $ligne=<FIC>){
    $descriptionxml=$descriptionxml.$ligne;
  }
  close FIC;
  return ($titrexml,$descriptionxml);
  #exit;

}
