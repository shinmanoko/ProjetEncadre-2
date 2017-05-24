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
                <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
                        <h2><img src="images/棒棒糖.png" height="50" width="50"></img><xsl:value-of select="exo/title"/></h2>
        
                    </div>
                    <br></br>
                    
                    <p align="center">
                        <a href="#question1">Question1</a>&#160;
                        <a href="#question2">Question2</a>&#160;
                        <a href="#question3">Question3</a>&#160;
                        <a href="#question4">Question4</a>&#160;
                        <a href="#question5">Question5</a>&#160;
                        <a href="#question6">Question6</a>&#160;
                        
                    </p>
                    
                    <div class="col c12" id="question1">
                        <h><b><xsl:value-of select="exo/question1/title"/></b></h>
                        <p><xsl:value-of select="exo/question1/Json/p1"/></p>
                        <p><xsl:value-of select="exo/question1/Json/p2"/></p>
                        
                            <li>-<xsl:value-of select="exo/question1/Json/list1/l1"/></li>
                            <li>-<xsl:value-of select="exo/question1/Json/list1/l2"/></li>
                        
                        <p><xsl:value-of select="exo/question1/Json/p3"/></p>
                       
                        <xsl:for-each select="exo/question1/Json/list2/l">
                            <li>-<xsl:value-of select="."/></li>
                        </xsl:for-each>
                        <br></br>
                        <p><xsl:value-of select="exo/question1/Json/plus"/><a href="https://en.wikipedia.org/wiki/JSON">&#160;<xsl:value-of select="exo/question1/Json/site"/></a></p>
                        <p>Pour comparer les formes de ces deux langues, on vous montre un élément présenté sous les deux langues:</p>
                        <u><b>XML</b></u><br></br>
                        <img src="images/XML.png" height="60%" width="60%"></img>
                        <br></br>
                        <u><b>JSON</b></u><br></br>
                        <img src="images/JSON.png" height="60%" width="60%"></img>
                        <xsl:for-each select="exo/question1/comparaison/p">
                            <p><xsl:value-of select="."/></p>
                        </xsl:for-each>
                        <br></br>
                        <p  align="center"><a href="javascript:scroll(0,0)"><img src="images/向上.png" height="20" width="20"></img>Au top</a></p>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12" id="question2">
                        <h><b><xsl:value-of select="exo/question2/title"/></b></h>
                        <p><xsl:value-of select="exo/question2/dsc"/></p>
                        <pre class="prettyprint"><code class="language-xml"><xsl:value-of select="exo/question2/dtd"/></code></pre>
                        <br></br>
                        <p  align="center"><a href="javascript:scroll(0,0)"><img src="images/向上.png" height="20" width="20"></img>Au top</a></p>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12" id="question3">
                        <h><b><xsl:value-of select="exo/question3/title"/></b></h>
                        <p><xsl:value-of select="exo/question3/description"/></p>
                        <a href="exos/exo9/9_1.xsl"><xsl:value-of select="exo/question3/fichierXSL"/></a><br></br>
                        <a href="exos/exo9/augustins1.xml"><xsl:value-of select="exo/question3/resultat"/></a><br></br>
                        <br></br>
                        <p  align="center"><a href="javascript:scroll(0,0)"><img src="images/向上.png" height="20" width="20"></img>Au top</a></p>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12" id="question4">
                        <h><b><xsl:value-of select="exo/question4/title"/></b></h>
                        <p><xsl:value-of select="exo/question4/description"/></p>
                        <a href="exos/exo9/exo9_2.xsl"><xsl:value-of select="exo/question4/fichierXSL"/></a><br></br>
                        <a href="exos/exo9/augustins2.xml"><xsl:value-of select="exo/question4/resultat"/></a><br></br>
                        <br></br>
                        <p  align="center"><a href="javascript:scroll(0,0)"><img src="images/向上.png" height="20" width="20"></img>Au top</a></p>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12" id="question5">
                        <h><b><xsl:value-of select="exo/question5/title"/></b></h>
                        <p><xsl:value-of select="exo/question5/desc"/></p>
                        <a href="exos/exo9/exo9_3.xsl"><xsl:value-of select="exo/question5/fichierXSL"/></a><br></br>
                        <a href="exos/exo9/augustins3.xml"><xsl:value-of select="exo/question5/resultat"/></a><br></br>
                        <br></br>
                        <p  align="center"><a href="javascript:scroll(0,0)"><img src="images/向上.png" height="20" width="20"></img>Au top</a></p>
                        <br></br>
                        <hr style="border:1px dashed  #e6b0aa; height:1px"></hr>
                        <br></br>
                    </div>
                    <div class="col c12" id="question6">
                        <h><b><xsl:value-of select="exo/question6/title"/></b></h>
                        <p><xsl:value-of select="exo/question6/desc"/></p>
                        <pre class="prettyprint"><code class="language-py"><xsl:value-of select="exo/question6/codePy"/></code></pre>
                        <a href="exos/exo9/json.py"><xsl:value-of select="exo/question6/fichierPython"/></a><br></br>
                        <a href="exos/exo9/sortieXML.xml"><xsl:value-of select="exo/question6/resultat"/></a><br></br><br></br>
                        <p><xsl:value-of select="exo/question6/desc2"/></p>
                        <pre class="prettyprint"><code class="language-perl"><xsl:value-of select="exo/question6/codePl"/></code></pre>
                        <a href="exos/exo9/Json2xml.pl"><xsl:value-of select="exo/question6/fichierPerl"/></a><br></br>
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