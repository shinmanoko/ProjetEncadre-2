<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">
<xsl:output method="xml"/>
    <xsl:template match="/">
        <xsl:element name="racine"><xsl:text>&#10;</xsl:text>
            <xsl:for-each select="doc/taggersent">
                
                <xsl:element name="taggersent"><xsl:text>&#10;</xsl:text>   
                    <xsl:for-each select="taggertoken">
                        
                        <xsl:if test="(not (@pos=''))">
                        
                            <xsl:if test="(not (contains(@pos,':')))">
                                <xsl:element name="{@pos}">
                    
                                <xsl:value-of select="@wordform"/>
                                </xsl:element><xsl:text>&#10;</xsl:text>
                            </xsl:if>
                            
                            <xsl:if test="(contains(@pos,':'))">
                                <xsl:element name="{substring-before(@pos,':')}">
                                 <xsl:attribute name="gram">
                                     <xsl:value-of select="substring-after(@pos,':')"/>
                                 </xsl:attribute>
                                
                                <xsl:value-of select="@wordform"/>
                                </xsl:element><xsl:text>&#10;</xsl:text>
                        </xsl:if>
                            
                    
                        </xsl:if>
                    
                    </xsl:for-each>

                    
                </xsl:element><xsl:text>&#10;</xsl:text>
                
                
                
            </xsl:for-each>

            </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>