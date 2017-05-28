#!/usr/bin/perl
#----------------------------------
# Ouverture des fichiers en lecture
#----------------------------------
open (FICTAG, $ARGV[0]) or die ("probleme sur ouverture de la sortie CORDIAL...");
open (FICPOS, $ARGV[1]) or die ("probleme sur ouverture du fichier des patrons...");
#-----------------------------------------
# on stocke les patrons dans une liste....
#-----------------------------------------
my @listedespatrons=();
while (my $lignepos = <FICPOS>) {
    chomp($lignepos);
    push(@listedespatrons,$lignepos);
}
close(FICPOS);
#---------------------------
# Initialisation des listes
#--------------------------
my @malignesegmentee = ();
my @listedetokens = ();
my @listedelemmes = ();
my @listedepos = ();
#-------------------------------------------
# Lecture du fichier de tags ligne par ligne
#-------------------------------------------
while (my $ligne = <FICTAG>) {
    #----------------------------------------------------------------------------------
    # On ne s'occupe pas des lignes qui ne respectent pas la modèle mot tab mot tab mot
    #----------------------------------------------------------------------------------
    if ($ligne =~ /^[^\t]+\t[^\t]+\t[^\t]+$/) {
	#-------------------------------------------
	# Suppression du caractère de saut de ligne
	chomp($ligne);
	#-------------------------------------------
	# Remplissage des listes
	@malignesegmentee = split(/\t/, $ligne);
	push(@listedetokens, $malignesegmentee[0]);
	push(@listedelemmes, $malignesegmentee[1]);
	push(@listedepos, $malignesegmentee[2]);
	#-------------------------------------------
    }
}
close(FICTAG);
#-----------------------------------
# on va maintenant parcourir les POS
# et les TOKENS en //
#----------------------------------------------------------------------------------------
# 1. on cree une liste tmp des POS que l'on va parcourir en supprimant le premier element 
#    a chaque fois
#----------------------------------------------------------------------------------------
my @tmplistedespos=@listedepos;
my $indice=0;
while (my $pos =shift(@tmplistedespos)) {
    foreach my $patron (@listedespatrons) {
	#-----------------------------------
	# on segmente le patron pour connaitre
	# son premier element
	my @listedeterme=split(/\#/,$patron);
	#-----------------------------------
	# on teste si l'element courant POS correspond au premier element du patron...
	if ($pos=~/$listedeterme[0]/) {
	    # si c'est OK...
	    # on regarde maintenant s'il y a correspondance pour la suite...
	    my $verif=0;
	    for (my $i=0;$i<=$#listedeterme-1;$i++) {
		if ($tmplistedespos[$i]=~/$listedeterme[$i+1]/) { 
		    #Le suivant est bon aussi...
		    $verif++ ;
		}
		else {
		    # ici : $tmplistedespos[$i] differe de $listedeterme[$i+1]...
		}
	    }
	    #------------------------------------------------------------------------
	    # si verif est egal au nb d'element du patron c'est qu'on a tt reconnu... 
	    # on imprime les tokens en // aux POS : astuce $indice permet de garder le 
	    # le // entre POS et TOKEN....
	    #------------------------------------------------------------------------
	    if ($verif == $#listedeterme) { 
		#print "Correspondance sur $patron \n";
		for (my $i=0;$i<=$#listedeterme;$i++) {
		    print $listedetokens[$indice+$i]," ";
		}
		print "\n";
	    }
	}
    }
    $indice++;
    # on avance dans la liste des POS et des TOKEN en //
}
