<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>EXO11-2 l'alignement des 2 volets</title>
            </head>
            <body>
                <h1>EXO.11 Sentence Alignment Confidence Annotation</h1>
                <h2>Alignement des 2 volets</h2>
                    <br/>
                    <table border="1">
                        <tr>
                            <th>ENGLISH</th>
                            <th>FRANCAIS</th>
                        </tr>
                        <xsl:for-each select="//Volets">
                            <tr>
                                <td>
                                    <xsl:value-of select="En"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Fr"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <br/>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>