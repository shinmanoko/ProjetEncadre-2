open(FILE,"$ARGV[0]");
my @lignes=<FILE>;
close(FILE);
while (@lignes) {
    my $ligne=shift(@lignes);
    chomp $ligne;
    my $sequence="";
    my $longueur=0;
    if ( $ligne =~ /^([^\t]+)\t[^\t]+\t$ARGV[1]/) {
	 $sequence.=$1;
	 $longueur++;
	 my $indice=1;
	 my $stop=1;
	 while (($indice < $#ARGV) and ($stop == 1)) {
	     my $nextligne=$lignes[$indice-1];
	     if ( $nextligne =~ /^([^\t]+)\t[^\t]+\t$ARGV[$indice+1]/) {
		 $sequence.=" ".$1;
		 $longueur++;
	     }
	     else {
		 $stop=0;
	     }
	     $indice++;
	 }
	 if ($longueur == $#ARGV) {
	     print $sequence,"\n";
	 }
     }
}

