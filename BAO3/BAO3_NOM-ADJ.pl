open(FILE,"<:encoding(iso8859-1)","$ARGV[0]");
#--------------------------------------------
# le patron cherché ici est du type NOM ADJ";
# le modifier pour extraire NOM PREP NOM
#--------------------------------------------
my @lignes=<FILE>;
close(FILE);

while (my $ligne=shift(@lignes)) {
    chomp $ligne;
	$ligne =~ s/\r//g;
	$ligne =~ s/\n//g;
    my $sequence="";
    my $longueur=0;

    if ( $ligne =~ /<element><data type=\"type\">NOM<\/data><data type=\"lemma\">[^<]+<\/data><data type=\"string\">([^<]+)<\/data><\/element>/) {
		my $forme=$1;
		$sequence.=$forme;
		$longueur=1;

		my $nextligne=$lignes[0];
		if ( $nextligne =~ /<element><data type=\"type\">ADJ<\/data><data type=\"lemma\">[^<]+<\/data><data type=\"string\">([^<]+)<\/data><\/element>/) {
			my $forme=$1;
			$sequence.=" ".$forme;
			$longueur=2;
		}
    }
    if ($longueur == 2) {
	print $sequence,"\n";
    }
}
