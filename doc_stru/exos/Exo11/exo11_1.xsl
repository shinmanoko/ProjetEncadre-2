<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <head bgcolor="red"></head>
            <body>
                <h1 align="center">Tableau d'alignement</h1>
                
                <table border="3">
                    <tr>
                        <th bgcolor=" #bbdefb">Français</th>
                        <th bgcolor=" #ffcdd2">Anglais</th>
                    </tr>
                   
                    <xsl:for-each select="trAnnot/linkList">
                        <xsl:choose>
                            <xsl:when test="@level='chunk'">
                                <xsl:for-each select="linkGroup/link">
                                    <tr>
                                        <td><xsl:value-of select="*[contains(@endPos,'doc_en')]"/></td>
                                        <td><xsl:value-of select="*[contains(@endPos,'doc_fr')]"/></td>
                                    </tr>
                                    
                                </xsl:for-each>
                            </xsl:when>
                        </xsl:choose>
                        
                    </xsl:for-each>
             
                </table>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>