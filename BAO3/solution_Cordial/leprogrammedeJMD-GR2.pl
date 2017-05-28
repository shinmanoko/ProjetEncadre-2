#!/usr/bin/perl
# programme d'extraction de patron de POS dans un fichier étiqueté par Cordial
# ce programme prend 2 arguments : le fichier cordial et le fichier des patrons
my @TOKENS=();
my @ETIQUETTES=();
open(FIC,"<:encoding(iso-8859-1)",$ARGV[0]);
open(MOTIF,"<:encoding(iso-8859-1)",$ARGV[1]);
my @LISTEDEPOS=<MOTIF>;
close(MOTIF);
while (my $ligne=<FIC>) {
    if ($ligne=~/^[^\t]+\t[^\t]+\t[^\t]+/) {
        chomp ($ligne);
        $ligne=~s/\r//;
        if ($ligne!~/PCTFORTE/) {
            my @LISTE=split(/\t/,$ligne);    
            push(@TOKENS,$LISTE[0]);
            push(@ETIQUETTES,$LISTE[2]);
        }
        else {
            #print "@TOKENS\n";
            #print "@ETIQUETTES\n";
            &traitement;
            @TOKENS=();
            @ETIQUETTES=();
        }
    }
}
close(FIC);
#-------------- procédures du programme ----------
sub traitement {
    foreach my $lignedepos (@LISTEDEPOS) {
        chomp $lignedepos; # <=== "NC.+ ADJ.+"
        my $lignedesetiquettes=join(" ",@ETIQUETTES);
        while ($lignedesetiquettes=~/$lignedepos/g) {
            my $avant=$`;
            my $longueuravant=0;
            while ($avant=~/ /g) {
                $longueuravant++
            }
            my $nbdeblancdansmotif=0;
            while ($lignedepos=~/ /g) {
                $nbdeblancdansmotif++
            }
            #print "Ca matche !!!! \n";
            #print "MOTIF  : $lignedepos \n";
            #print "PHRASE : $lignedesetiquettes\n";
            #print "AVANT : $avant \n";
            #print "longueuravant :  $longueuravant\n";
            #print "nb blanc ds motif :  $nbdeblancdansmotif\n";
            #$nbdeblancdansmotif++;
            my $stop=$longueuravant+$nbdeblancdansmotif;
            print "@TOKENS[$longueuravant..$stop] \n";
            #print "Please : appuie sur une touche !!!!\n";
            #my $wait=<STDIN>;
        }
    }
}