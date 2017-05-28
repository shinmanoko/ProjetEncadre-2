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

#===========================================================
# on définit un Associativearray pour stocker les titres 
# afin d'éviter de traiter le même texte de plusieurs fois
# utilisé plus tard dans le 2e étape
my %memoire=();
#===========================================================

my $rep="$ARGV[0]";
my $rubrique="$ARGV[1]";
# on s'assure que le nom du répertoire ne se termine pas par un "/"
$rep=~ s/[\/]$//;
# on initialise une variable contenant le flux de sortie 
#my $DUMPFULL1="";
#----------------------------------------
open my $outTXT, ">:encoding(utf-8)", "sortieTXT.txt";
open my $outXML,">:encoding(utf-8)", "sortieXML.xml";
print $outXML "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n";
print $outXML  "<PARCOURS>\n";
print $outXML  "<NOM>Votre nom</NOM>\n";
print $outXML  "<FILTRAGE>\n";
#----------------------------------------
&parcoursarborescencefichiers($rep);	# on lance la récursion.... et elle se terminera après examen de toute l'arborescence
#----------------------------------------
print $outXML  "</FILTRAGE>\n";
print $outXML "</PARCOURS>\n";
close $outTXT;
close $outXML;
exit;
#----------------------------------------------



#############################################################################

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
			if ($file =~/$rubrique.+\.xml$/) {
				
				print "<",$i++,"> ==> ",$file,"\n";
				
				open my $input ,$file;
				my $texte = "";
				while (my $ligne = <$input>) {
					chomp $ligne;
					$ligne =~ s/\r//g;
					$texte = $texte . $ligne ;
				}

# Il faut continuer le nettoyage du texte
# ....
#
				$texte =~ s/> +</></g;
				$texte =~ s/&#38;#39;/'/g;

				while ($texte =~ /<title>(.+?)<\/title>.+?<description>(.+?)<\/description>/g){
					my $titre=$1;
					my $description=$2;

					if (!(exists $memoire{$titre})) {

						$description =~ s/&lt;.+&gt;//g;
		
						print $outTXT "$titre\n"; # on imprime le titre
						print $outTXT "$description\n\n"; # on imprime la description
						
						#########################################################################################
						# On etiquette titre et description
						my ($titrexml, $desccriptionxml) = &etiquetage($titre, $description);
						#########################################################################################

						print $outXML "<item><titre>$titre</titre><description>$description</description></item>\n";
						$memoire{$titre}=1;
						}
				}
				close $input;	
				
				
			}
		}
    }
}

#############################################################################




#############################################################################

sub etiquetage {
	
	my $titre0 = $_[0];      ### shift(@_)
	my $description0 = $_[1]; ### shift(@_)

	open(TMP, ">:encoding(utf-8)", "toto.txt");
	print TMP $titre0;
	system("perl tokenise-utf8.pl sortieTXT.txt | ./tree-tagger -token -lemma -no-unknown french-oral-utf-8.par > fichier_etiquette1.txt ");
	system("treetagger2xml fichier_etiquette1.txt");
	close TMP;

	open(FIC, "<:encoding(utf-8)", "fichier_etiquette1.txt.xml");
	my $titrexml = "";
	$premierligne1 = <FIC>;
	while (my $ligne = <FIC>) {
		$titrexml = $titrexml.$ligne;
	};
	close FIC;

	open(TMP, ">:encoding(utf-8)", "toto.txt");
	print TMP $description0;
	system("perl tokenise-utf8.pl sortieTXT.txt | ./tree-tagger -token -lemma -no-unknown french-oral-utf-8.par > fichier_etiquette2.txt ");
	system("treetagger2xml fichier_etiquette2.txt");
	close TMP;

	open(FIC, "<:encoding(utf-8)", "fichier_etiquette2.txt.xml");
	my $descriptionxml = "";
	$premierligne2 = <FIC>;
	while (my $ligne = <FIC>) {
		$descriptionxml = $descriptionxml.$ligne;
	};
	close FIC;

	return ($titrexml, $descriptionxml);

	exit;

};

#############################################################################





