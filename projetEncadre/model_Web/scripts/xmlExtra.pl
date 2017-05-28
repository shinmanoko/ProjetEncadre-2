print "begin \n";
open (FILE,"$ARGV[0]");
my @lignes=<FILE>;
close(FILE);
while (@lignes){
  my $ligne=shift(@lignes);
  chomp $ligne;
  #print "$ligne \n";
  my $sequences="";
  my $longeur=0;
  if ($ligne=~ /<element><data type=\"type\">NOM<\/data><data type=\"lemma\">[^<]+<\/data><data type=\"string\">([^<]+)<\/data><\/element>/){
    my $forme=$1;
    $sequences.=$forme;
    $longeur=1;
    my $ligneNext=$lignes[0];
    if ($ligneNext=~ /<element><data type=\"type\">PRP<\/data><data type=\"lemma\">[^<]+<\/data><data type=\"string\">([^<]+)<\/data><\/element>/){
      my $forme=$1;
      $sequences.=" ".$forme;
      $longeur=2;
      my $ligneNextNext=$lignes[1];
      if ($ligneNextNext=~ /<element><data type=\"type\">NOM<\/data><data type=\"lemma\">[^<]+<\/data><data type=\"string\">([^<]+)<\/data><\/element>/){
        my $forme=$1;
        $sequences.=" ".$forme;
        $longeur=3;
      }
    }
  }
  if ($longeur==3){
    print $sequences,"\n";
  }
}
