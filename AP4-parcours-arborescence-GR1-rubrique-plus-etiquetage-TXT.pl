#/usr/bin/perl
<<DOC; 
Votre Nom : 
JANVIER 2016
 usage : perl parcours-arborescence-fichiers repertoire-a-parcourir
 Le programme prend en entrée le nom du répertoire contenant les fichiers
 à traiter
 Le programme construit en sortie un fichier structuré contenant sur chaque
 ligne le nom du fichier et le résultat du filtrage :
<FICHIER><NOM>du fichier</NOM></FICHIER><CONTENU>du filtrage</CONTENU></FICHIER>
DOC
#-----------------------------------------------------------
my $rep="$ARGV[0]";
my $type="$ARGV[1]";
my %dico;
# on s'assure que le nom du répertoire ne se termine pas par un "/"
$rep=~ s/[\/]$//;
# on initialise une variable contenant le flux de sortie 
my $DUMPFULL1="";
#----------------------------------------
my $output1="$type.xml";
if (!open (FILEOUT,">:encoding(utf8)",$output1)) { die "Pb a l'ouverture du fichier $output1"};
open my $out, ">:encoding(utf8)", "$type.txt";
#----------------------------------------
&parcoursarborescencefichiers($rep);	# on lance la récursion.... et elle se terminera après examen de toute l'arborescence
#----------------------------------------
print FILEOUT "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n";
print FILEOUT "<PARCOURS>\n";
print FILEOUT "<NOM>Votre nom</NOM>\n";
print FILEOUT "<FILTRAGE>".$DUMPFULL1."</FILTRAGE>\n";
print FILEOUT "</PARCOURS>\n";
close(FILEOUT);
close $out;
exit;
#----------------------------------------------
sub parcoursarborescencefichiers {
    my $path = shift(@_);
    opendir(DIR, $path) or die "can't open $path: $!\n";
    my @files = readdir(DIR);
    closedir(DIR);
    foreach my $file (@files) {
		next if $file =~ /^\.\.?$/;
		$file = $path."/".$file;
		if (-d $file) {
			print "<NOUVEAU REPERTOIRE> ==> ",$file,"\n";
			&parcoursarborescencefichiers($file);	#recurse!
			print "<FIN REPERTOIRE> ==> ",$file,"\n";
		}
		if (-f $file) {
					#si c'est un fichier contenant $type
					if ($file =~ /$type.+\.xml/) {
						open my $input, "<:encoding(utf8)" ,$file;
						my $texte = "";
						while (my $ligne = <$input>) {
							chomp $ligne;
							$ligne =~ s/\r//g;
							$texte = $texte . $ligne ;
						}
						$texte =~ s/> +</></g;
						$texte =~ s/&#38;#39;/'/g;			
						while ($texte =~ /<item><title>(.+?)<\/title>.+?<description>(.+?)<\/description>/g){
							my $titre=$1;
							my $description=$2;
							$description =~ s/&lt;.+?&gt;$//g;
							if (!(exists $dico{$titre})) {
							my ($xmltitre, $xmldescription) = &etiquette ($titre,$description);
								print $out "$titre\n"; # on imprime le titre
								print $out "$description\n\n"; # on imprime la description
								$DUMPFULL1 = $DUMPFULL1 . "<item><titre>$xmltitre</titre><description>$xmldescription</description></item>\n";
								$dico{$titre} = 1;
								#print $DUMPFULL1;
							
							}	
						}	
					close $input;
				}
			}
		}
}
#----------------------------------------------

sub etiquette {

my $var1 = shift(@_); #$_[0]
my $var2 = shift(@_); #$_[1]

open my $f1, ">:encoding(utf8)", "titre.txt" ;
open my $f2, ">:encoding(utf8)", "description.txt" ;
print $f1 $var1;
print $f2 $var2;
close $f1;
close $f2;

system("perl  tokenise-utf8.pl titre.txt | ./tree-tagger.exe -token -lemma -no-unknown french-utf8.par > titre_etiquete.txt");
system ("perl treetagger2xml-utf8.pl titre_etiquete.txt utf8"); #FICHIER CREE
open my $f1, "<:encoding(utf8)", "titre_etiquete.txt.xml";
	my $concat="";
	my $ligne = <$f1>;
	while (my $ligne = <$f1>) {
	$concat = $concat . $ligne ;
	}
close $f1;
system("perl  tokenise-utf8.pl description.txt | ./tree-tagger.exe -token -lemma -no-unknown french-utf8.par > description_etiquete.txt");
system ("perl treetagger2xml-utf8.pl description_etiquete.txt utf8"); #FICHIER CREE
open my $f2, "<:encoding(utf8)", "description_etiquete.txt.xml";
	my $concat2="";
	my $ligne = <$f2>;
	while (my $ligne = <$f2>) {
	$concat2 = $concat2 . $ligne ;
	}
close $f2;

return $concat, $concat2;

#exit;
}

