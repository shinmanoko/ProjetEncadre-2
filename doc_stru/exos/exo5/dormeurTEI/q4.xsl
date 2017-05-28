<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    <xsl:template match="/">
        <html>
            <body bgcolor="#f8c471">
                <div style="top:10%;position:absolute">
                <xsl:apply-templates select="TEI/text/group/text/body/lg"/> 
                    </div>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="lg">
        <xsl:value-of select="lg"/><br/>
    </xsl:template>
</xsl:stylesheet>