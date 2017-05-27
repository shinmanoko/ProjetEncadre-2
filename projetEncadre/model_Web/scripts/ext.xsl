<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    <xsl:template match="/">
        <html>
            <body>
                <table>
                    <tr><td>
                        <bockquote><xsl:apply-templates select=".//article"/></bockquote></td></tr>
        </table>
        </body>
        </html>
    </xsl:template>
        

    <xsl:template match="article">
        <xsl:for-each select="element">
            <xsl:if test="(./data[contains(text(),'NOM')])">
               <xsl:variable name="p1" select="./data[3]/text()"/>
                <xsl:if test="following-sibling::element[1][./data[contains(text(),'PRP')]]">
                    <xsl:variable name="p2" select="following-sibling::element[1]/data[3]/text()"/>
                    <xsl:if test="following-sibling::element[2][./data[contains(text(),'NOM')]]">
                        <xsl:variable name="p3" select="following-sibling::element[2]/data[3]/text()"/>
                       <xsl:value-of select="$p1"/><xsl:text> </xsl:text><xsl:value-of select="$p2"/>&#160;<xsl:text></xsl:text><xsl:value-of select="$p3"/><br/>
                        
                    </xsl:if>
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
       
    </xsl:template>
</xsl:stylesheet>