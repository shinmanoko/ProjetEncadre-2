<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    <xsl:template match="/">
        <html>
            <body bgcolor="#aed6f1">
                <div style="left:35%;top:10%;position:absolute;width:40%">
                <xsl:apply-templates select="TEI/text/group/text/body/lg/lg/l"/> 
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="l">
        <b><xsl:value-of select="count(preceding-sibling::l)+1"/> </b>
        .
        <xsl:value-of select="."/><br/>
    </xsl:template>
</xsl:stylesheet>