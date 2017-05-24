<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/teiCorpus.2">
        <html>
            <head>
                <title>EXO8-1 Feuille de style minimal</title>
            </head>
            <body>
                <h2>EXO.8 Air France - Feuille de style minimal</h2>
                <br/>
                <xsl:apply-templates/>
                <br/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="teiHeader">
        <xsl:for-each select="*/*">
             <br/>
             <xsl:value-of select="." disable-output-escaping="yes"/>
             <br/>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template match="head">
        <br/>
        <b><xsl:value-of select="."/></b>
        <br/>
        <br/>
    </xsl:template>
    
    <xsl:template match="u">
        <xsl:value-of select="."/>
        <br/>
    </xsl:template>
    
</xsl:stylesheet>