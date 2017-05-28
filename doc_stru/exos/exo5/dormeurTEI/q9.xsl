<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title"/></title>
            </head>
            <body background="a.jpeg">
                <div style="left:35%;top:10%;position:absolute;width:40%">
                <h1><xsl:value-of select="TEI/text/group/text/front/head"/></h1>
                    <h4><xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/author"/></h4>
                    <h4><xsl:value-of select="TEI/text/group/text/front/dateline"/></h4>
                    <xsl:for-each select="TEI/text/group/text/body/lg/lg">
                        <xsl:choose>
                            <xsl:when test="count(*)&gt;3">
                                <xsl:for-each select="l">
                                    <b><xsl:value-of select="."/></b><br></br>
                                </xsl:for-each>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:for-each select="l">
                                <i><xsl:value-of select="."/></i><br></br>
                                </xsl:for-each>
                            </xsl:otherwise>
                        </xsl:choose>
                        <br></br>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>