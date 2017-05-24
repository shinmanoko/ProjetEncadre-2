<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1"/>
<xsl:template match="/">
  <html>
    <body bgcolor="#d2b4de ">
    <div style="width:150px;height:90px;left:30%;top:30%;position:absolute;width:40%">
  <xsl:apply-templates select="TEI/text/group/text/body/lg/lg"/>
    </div>
    </body>
  </html>

 </xsl:template>
 
 <xsl:template match="lg">
 <xsl:value-of select="l[3]"/><br/>
 </xsl:template>
 
</xsl:stylesheet>
