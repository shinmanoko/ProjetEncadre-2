<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2> Classer par auteur_references</h2>
                <table border="1">
                    <tr bgcolor="red">
                        <th>Auteur</th>
                        <th>numeroInventaire</th>
                        <th>numeroAcquisition</th>
                    </tr>
                    <xsl:for-each select="document/oeuvre">
                        <xsl:sort select="auteur1"/>
                        <xsl:choose>
                            
                            <xsl:when test="auteur1">
                                
                                <tr>
                                    <td bgcolor="FFCCCC">
                                        
                                        <xsl:value-of select="auteur1"/>
                                    </td>
                                    <td><xsl:value-of select="numeroInventaire"/></td>
                                    <td><xsl:value-of select="numeroAcquisition"/></td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                    <td bgcolor="FFCCCC">Unkown</td>
                                    <td><xsl:value-of select="numeroInventaire"/></td>
                                    <td><xsl:value-of select="numeroAcquisition"/></td>
                                </tr>
                            </xsl:otherwise>
                            
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>