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
                        <h2><img src="images/main_menu_flight_red.png" height="50" width="50"></img><xsl:value-of select="exo/title"/></h2>
                    </div>
                        <p align="center">
                            <font size="4em"><a href="#phase1">Phase1</a></font>&#160;&#160;
                            <font size="4em"><a href="#phase2">Phase2</a></font>&#160;&#160;
                            <font size="4em"><a href="#phase3">Phase3</a></font>
                            
                            
                        </p>
                    <div class="col c12" id="phase1">
                        <h><b><xsl:value-of select="exo/phase1/title"/></b></h>
                        <li><xsl:value-of select="exo/phase1/description/p1"/></li>
                        <li><xsl:value-of select="exo/phase1/description/p2"/></li>
                        
                        <li><xsl:value-of select="exo/phase1/description2/p1"/></li>
                        <p><xsl:value-of select="exo/phase1/description2/p2"/></p>
                        <li><a href="exos/Exo8/8AF_0.xml"><xsl:value-of select="exo/phase1/fichierXml"/></a><br></br></li>
                        <li>Voici le dtd généré:</li>
                        <pre class="prettyprint"><code class="language-xml"><xsl:value-of select="exo/phase1/dtd"/></code></pre>
                        <br></br>
                        <p  align="center"><a href="javascript:scroll(0,0)"><img src="images/向上.png" height="20" width="20"></img>Au top</a></p>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12" id="phase2">
                        <h><b><xsl:value-of select="exo/phase2/title"/></b></h>
                        <p><xsl:value-of select="exo/phase2/q1/description"/></p>
                        <pre class="prettyprint"><code class="language-xml"><xsl:value-of select="exo/phase2/q1/code"/></code></pre>
                        <p><xsl:value-of select="exo/phase2/q2/description"/></p>
                        <pre class="prettyprint"><code class="language-xml"><xsl:value-of select="exo/phase2/q2/code"/></code></pre>
                        <p><xsl:value-of select="exo/phase2/q3/description"/></p>
                        <pre class="prettyprint"><code class="language-xml"><xsl:value-of select="exo/phase2/q3/code"/></code></pre>
                        <p><xsl:value-of select="exo/phase2/q4/description"/></p>
                        <pre class="prettyprint"><code class="language-xml"><xsl:value-of select="exo/phase2/q4/code"/></code></pre>
                        <p><xsl:value-of select="exo/phase2/q5/description"/></p>
                        <pre class="prettyprint"><code class="language-xml"><xsl:value-of select="exo/phase2/q5/code"/></code></pre>
                        <br></br>
                        <p  align="center"><a href="javascript:scroll(0,0)"><img src="images/向上.png" height="20" width="20"></img>Au top</a></p>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12" id="phase3">
                        <h><b><xsl:value-of select="exo/phase3/title"/></b></h>
                        <p><xsl:value-of select="exo/phase3/etape1/description"/></p>
                        <a href="exos/Exo8/8AirFrance1.xsl"><xsl:value-of select="exo/phase3/etape1/fichierXsl"/></a><br></br>
                        <p><a href="exos/Exo8/8AF_1.xml"><xsl:value-of select="exo/phase3/etape1/lien"/></a></p>
                        <li><xsl:value-of select="exo/phase3/etape1/description2"/></li>
                        <xsl:for-each select="exo/phase3/etape1/list/l">
                            <li><xsl:value-of select="."/></li>
                        </xsl:for-each>
                        <br></br>
                        <a href="exos/Exo8/8AirFrance2.xsl"><xsl:value-of select="exo/phase3/etape1/fichierXsl2"/></a><br></br>
                        <p><a href="exos/Exo8/8AF_2.xml"><xsl:value-of select="exo/phase3/etape1/lien2"/></a></p>
                        <p><xsl:value-of select="exo/phase3/etape2/description"/></p>
                        <a href="exos/Exo8/8AirFrance3.xsl"><xsl:value-of select="exo/phase3/etape2/fichierXslt"/></a><br></br>
                        <a href="exos/Exo8/res.xml"><xsl:value-of select="exo/phase3/etape2/resultatXml"/></a>
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