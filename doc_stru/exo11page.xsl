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
                <script src="google-code-prettify/run_prettify.js" ></script>
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
                        <h2><img src="images/dice.png" height="55" width="55"></img><xsl:value-of select="exo/title"/></h2>
                          
                    </div>
                    <div class="col c12">
                        <p align="center">
                           
                            <b><a href="#partie1">Partie I.</a></b>&#160;&#160;&#160;&#160;
                            <b><a href="#partie2">Partie II.</a></b>
                            
                            
                        </p>
                    </div>
                    <div class="col c12" id="partie1">
                        <h4><b><xsl:value-of select="exo/partie1/title"/></b></h4><br></br>
                        <h5><b><xsl:value-of select="exo/partie1/question1/description"/></b></h5>
                        <p><xsl:value-of select="exo/partie1/question1/reponse"/></p>
                        <h5><b><xsl:value-of select="exo/partie1/question2/description"/></b></h5>
                        <a href="exos/Exo11/thepromise-lapromesse1_0.xml"><xsl:value-of select="exo/partie1/question2/fichierXml"/></a><br></br>
                        <a href="exos/Exo11/exo11_1.xsl"><xsl:value-of select="exo/partie1/question2/fichierXsl"/></a><br></br>
                        <a href="exos/Exo11/thepromise-lapromesse1_1.xml"><xsl:value-of select="exo/partie1/question2/lien"/></a><br></br><br></br>
                        <h5><b><xsl:value-of select="exo/partie1/question3/description"/></b></h5>
                        <a href="exos/Exo11/exo11_1_2_fr.xsl"><xsl:value-of select="exo/partie1/question3/fichierfr"/></a><br></br>
                        <a href="exos/Exo11/thepromise-lapromesse1_3fr.xml"><xsl:value-of select="exo/partie1/question3/resultatfr"/></a><br></br>
                        <a href="exos/Exo11/exo11_1_2_anglais.xsl"><xsl:value-of select="exo/partie1/question3/fichieren"/></a><br></br>
                        <a href="exos/Exo11/thepromise-lapromesse1_2en.xml"><xsl:value-of select="exo/partie1/question3/resultaten"/></a><br></br>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12" id="partie2">
                        <h4><b><xsl:value-of select="exo/partie2/title"/></b></h4><br></br>
                    </div>
                </div>
                <div class="row">
                    <div class="col c12" >
                        
                        <h5><b><xsl:value-of select="exo/partie2/question1/description"/></b></h5>
                        <p><xsl:value-of select="exo/partie2/question1/reponse"/></p><br></br>
                        <h5><b><xsl:value-of select="exo/partie2/question2/description"/></b></h5>
                        <p><xsl:value-of select="exo/partie2/question2/rep"/></p>
                        <pre class="prettyprint"><code class="language-py"><xsl:value-of select="exo/partie2/question2/code"/></code></pre>
                        
                        <a href="exos/Exo11/Construction_du_fichier_XML.py"><xsl:value-of select="exo/partie2/question2/fichierPy"/></a><br></br>
                        <a href="exos/Exo11/0SentenceAlignmentConfidenceAnnotation.xml"><xsl:value-of select="exo/partie2/question2/fichierXml"/></a><br></br><br></br>
                        <h5><b><xsl:value-of select="exo/partie2/question3/description"/></b></h5>
                        <a href="exos/Exo11/SentenceAlignmentConfidenceAnnotation.xsl"><xsl:value-of select="exo/partie2/question3/fichier"/></a><br></br>
                        <a href="exos/Exo11/SentenceAlignmentConfidenceAnnotation.xml"><xsl:value-of select="exo/partie2/question3/lien"/></a><br></br><br></br>
                        <p  align="center"><a href="javascript:scroll(0,0)"><img src="images/向上.png" height="20" width="20"></img>Au top</a></p>
                        <br></br>
                        <div class="row">
                            <div class="col c12 aligncenter">
                                <p><span class="larger"><br></br><br></br></span></p>
                            </div>
                        </div>
                    </div>
                </div>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>