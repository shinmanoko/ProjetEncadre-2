<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Exo 10</title>
            </head>
            <body>
                <br/><br/>
                <h1 align="center">Exercice 10</h1>
                <br/>
                <xsl:apply-templates select="//text"/>
                <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                <div>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
                    <script>
                        $(document).ready(function() {
                        $('.js-scrollTo').on('click', function() { // Au clic sur un élément
                        var page = $(this).attr('href'); // Page cible
                        var speed = 750; // Durée de l'animation (en ms)
                        $('html, body').animate( { scrollTop: $(page).offset().top }, speed ); // Go
                        return false;
                        });
                        });
                    </script>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="//text">
        <xsl:for-each select="endroit">
            <xsl:variable name="id" select="@id"/>
            <div id="{$id}">
                <br/>
                <p>
                    <xsl:value-of select="@id"/>. <xsl:value-of select="question"/>
                </p>
                <blockquote>
                <xsl:for-each select="choix">
                    <xsl:variable name="choix" select="@next"/>
                    <p>
                        <a class="js-scrollTo" href="#{$choix}">
                            <xsl:value-of select="."/>
                        </a>
                    </p>
                </xsl:for-each>
                </blockquote>
            </div>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>