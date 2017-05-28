<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="utf-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <body style="font-family: 'Times New Roman', sans-serif">
                <xsl:for-each select="/teiCorpus.2/TEI.2/text/group/text/body/div/u">
                    <xsl:if test="self::u[contains(text(), 'quand')]">
                        <h3>
                            <b>
                                <xsl:value-of select="../head"/>
                                <xsl:text>, n = </xsl:text>
                                <xsl:value-of select="@n"/>
                                <xsl:text>, locuteur = </xsl:text>
                                <xsl:value-of select="@who"/>
                            </b>
                        </h3>
                        <p>
                            <i>
                                <xsl:text>précédant: </xsl:text>
                                <xsl:value-of select="preceding-sibling::u[1]"/>
                            </i>
                        </p>
                        <p>
                            <b>
                            <xsl:text></xsl:text>
                            <xsl:value-of select="substring-before(string(.),'quand')"/>
                            <font color="#CC0000" align="center">
                                <xsl:text>quand</xsl:text>
                            </font>
                            <xsl:value-of select="substring-after(string(.),'quand')"/>
                            </b>
                        </p>
                        <p>
                            <i>
                                <xsl:text>suivant:    </xsl:text>
                                <xsl:value-of select="following-sibling::u[1]"/>
                            </i>
                            <br/>
                        </p>
                        <br/>
                    </xsl:if>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>