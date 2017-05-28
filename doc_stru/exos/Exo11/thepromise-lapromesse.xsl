<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="utf-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>EXO11-1 l'alignement des 2 volets</title>
            </head>
            <body>
                <h2>EXO.11 TRANSREAD thepromise-lapromesse</h2>
                <h3>Alignement des 2 volets</h3>
                <br/>
                <xsl:apply-templates/>
                <br/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="linkList[@level='chunk']">
        <table border="1">
            <tr>
                <th>ENGLISH</th>
                <th>FRANCAIS</th>
            </tr>
            <xsl:for-each select="linkGroup">
                <xsl:for-each select="link">
                <tr>
                    <td>
                        <xsl:value-of select="docSpan[1]"/>
                    </td>
                    <td>
                        <xsl:value-of select="docSpan[2]"/>
                    </td>
                </tr>
                </xsl:for-each>
            </xsl:for-each>
        </table>
    </xsl:template>
    
</xsl:stylesheet>