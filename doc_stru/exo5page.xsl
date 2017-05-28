<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html lang="fr">
            <head>
                <meta charset="UTF-8" />
                <meta name="description" content="Your description goes here" />
                <meta name="author" content="Your Name | Design by andreasviklund.com" />
                <link href='http://fonts.googleapis.com/css?family=ABeeZee' rel='stylesheet' type='text/css' />
                <link href='http://fonts.googleapis.com/css?family=Enriqueta' rel='stylesheet' type='text/css' />
                <link rel="stylesheet" type="text/css" href="in-response.css" title="In Response" media="all" />
                <meta name="viewport" content="width=device-width, initial-scale=0.6" />
                <link rel="Shortcut Icon" type="image/x-icon" href="images/cherry.ico" />
                <title>M1 TAL.Document Structuré</title>
            </head>
            
            <body class="light">
                <div id="layout">
                    
                    <div class="row">
                        <div class="col c12">
                            <h1 class="aligncenter"><a href="index.html">Documents Structurés</a></h1>
                            <p class="aligncenter slogan">Démonstration des exercices XML/XSL</p>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col c12 aligncenter navmenu">
                            <p>
                                <a href="Home.xml" class="current"><img src="images/主页.png" height="25" width="25"></img>Accueil</a>
                                <font size="4em" color="#666">Exercice:</font>
                                <a href="exo1page.xml" class="exercice" >1</a>
                                <a href="exo3page.xml" class="exercice" >3</a>
                                <a href="exo5page.xml" class="exercice" >5</a>
                                <a href="exo6page.xml" class="exercice" >6</a>
                                <a href="exo7page.xml" class="exercice" >7</a>
                                <a href="exo8page.xml" class="exercice" >8</a>
                                <a href="exo9page.xml" class="exercice" >9</a>
                                <a href="exo10page.xml" class="exercice" >10</a>
                                <a href="exo11page.xml" class="exercice">11</a>
                                <a href="Npage.xml" class="current"><img src="images/联系人.png" height="25" width="25"></img>Nous</a>
                            </p>
                        </div>
                    </div>
                    
                    <div class="col c12">
                        <h2><img src="images/plum_flower.png" height="50" width="50"></img><xsl:value-of select="exo/title"/></h2>
                        <p><xsl:value-of select="exo/description/p"/></p>
                        <a href="exos/exo5/dormeurTEI/dormeur-tei0.xml"><xsl:value-of select="exo/description/fichier"/></a><br></br>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12">
                        <p><xsl:value-of select="exo/exercices/phase1/question"/></p>
                        <a href="exos/exo5/dormeurTEI/q1.xsl"><xsl:value-of select="exo/exercices/phase1/fichierXsl"/></a><br></br>
                        <a href="exos/exo5/dormeurTEI/dormeur-tei1.xml"><xsl:value-of select="exo/exercices/phase1/resultat"/></a>
                        <br></br>  
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12">
                        <p><xsl:value-of select="exo/exercices/phase2/question"/></p>
                        <a href="exos/exo5/dormeurTEI/q2.xsl"><xsl:value-of select="exo/exercices/phase2/fichierXsl"/></a><br></br>
                        <a href="exos/exo5/dormeurTEI/dormeur-tei2.xml"><xsl:value-of select="exo/exercices/phase2/resultat"/></a>
                        <br></br>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12">
                        <p><xsl:value-of select="exo/exercices/phase3/question"/></p>
                        <a href="exos/exo5/dormeurTEI/q3.xsl"><xsl:value-of select="exo/exercices/phase3/fichierXsl"/></a><br></br>
                        <a href="exos/exo5/dormeurTEI/dormeur-tei3.xml"><xsl:value-of select="exo/exercices/phase3/resultat"/></a>
                        <br></br>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12">
                        <p><xsl:value-of select="exo/exercices/phase4/question"/></p>
                        <a href="exos/exo5/dormeurTEI/q4.xsl"><xsl:value-of select="exo/exercices/phase4/fichierXsl"/></a><br></br>
                        <a href="exos/exo5/dormeurTEI/dormeur-tei4.xml"><xsl:value-of select="exo/exercices/phase4/resultat"/></a>
                        <br></br>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12">
                        <p><xsl:value-of select="exo/exercices/phase5/question"/></p>
                        <a href="exos/exo5/dormeurTEI/q5.xsl"><xsl:value-of select="exo/exercices/phase5/fichierXsl"/></a><br></br>
                        <a href="exos/exo5/dormeurTEI/dormeur-tei5.xml"><xsl:value-of select="exo/exercices/phase5/resultat"/></a>
                        <br></br>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12">
                        <p><xsl:value-of select="exo/exercices/phase6/question"/></p>
                        <a href="exos/exo5/dormeurTEI/q6.xsl"><xsl:value-of select="exo/exercices/phase6/fichierXsl"/></a><br></br>
                        <a href="exos/exo5/dormeurTEI/dormeur-tei6.xml"><xsl:value-of select="exo/exercices/phase6/resultat"/></a>
                        <br></br>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12">
                        <p><xsl:value-of select="exo/exercices/phase7/question"/></p>
                        <a href="exos/exo5/dormeurTEI/q7.xsl"><xsl:value-of select="exo/exercices/phase7/fichierXsl"/></a><br></br>
                        <a href="exos/exo5/dormeurTEI/dormeur-tei7.xml"><xsl:value-of select="exo/exercices/phase7/resultat"/></a>
                        <br></br>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12">
                        <p><xsl:value-of select="exo/exercices/phase8/question"/></p>
                        <a href="exos/exo5/dormeurTEI/q8.xsl"><xsl:value-of select="exo/exercices/phase8/fichierXsl"/></a><br></br>
                        <a href="exos/exo5/dormeurTEI/dormeur-tei8.xml"><xsl:value-of select="exo/exercices/phase8/resultat"/></a>
                        <br></br>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12">
                        <p><xsl:value-of select="exo/exercices/phase9/question"/></p>
                        <a href="exos/exo5/dormeurTEI/q9.xsl"><xsl:value-of select="exo/exercices/phase9/fichierXsl"/></a><br></br>
                        <a href="exos/exo5/dormeurTEI/dormeur-tei9.xml"><xsl:value-of select="exo/exercices/phase9/resultat"/></a>
                        <br></br>
                        <br></br>
                        <p  align="center"><a href="javascript:scroll(0,0)"><img src="images/向上.png" height="20" width="20"></img>Au top</a></p>
                        <br></br>
                    </div>
                </div>
                <div class="row">
                    <div class="col c12 aligncenter">
                        <p><span class="larger"><br></br><br></br></span></p>
                        
                    </div>
                </div>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>