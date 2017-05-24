<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <body background="98.jpg">
                <div style="width:50%;left:25%;top:10%;bottom:10%;position:absolute;">
                    <h1 align="center">Volet Français</h1>
                    <xsl:for-each select="trAnnot/linkList">
                        <xsl:choose>
                            <xsl:when test="@level='chunk'">
                                <xsl:for-each select="linkGroup/link">
                                    
                                    <xsl:value-of select="*[contains(@endPos,'doc_fr')]"/>
                                    
                                    
                                    
                                </xsl:for-each>
                            </xsl:when>
                        </xsl:choose>
                        
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>