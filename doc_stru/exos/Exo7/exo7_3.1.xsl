<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>


 <xsl:template match="/">
        <html>
            <body bgcolor="#f4f6f6">
                <h1 align="center"><font color=" #cd6155">Recommandation XSLT1.0</font></h1>
                <xsl:apply-templates select="doc/taggersent"/>
            </body>
        </html>
    </xsl:template>
        
 <xsl:template match="taggersent">
    <p><xsl:apply-templates select="taggertoken"/></p>
 </xsl:template>

 <xsl:template match="taggertoken">
     <xsl:choose>
     <xsl:when test="contains(@pos,'DET:femi')">
         <font color="red"><xsl:value-of select="@wordform"/></font>
     </xsl:when>
     <xsl:when test="contains(@pos,'DET:masc')">
             <font color="blue"><xsl:value-of select="@wordform"/></font>
     </xsl:when>
     <xsl:otherwise>
         <font color=" #e6b0aa"><xsl:value-of select="@wordform"/></font>
     </xsl:otherwise>
     </xsl:choose>
     <xsl:text> </xsl:text>
     
 </xsl:template>
</xsl:stylesheet>