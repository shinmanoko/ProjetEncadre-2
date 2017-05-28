<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1"/>
<xsl:template match="/">
  <html>
    <body bgcolor="#77BB99">
      <div style="background-color: #f0f3f4;width:200px;height:150px;left:30%;top:10%;position:absolute;width:40%">
  <p>Titre :<xsl:value-of select="TEI/text/group/text/front/head"/></p>
  <p>Date : <xsl:value-of select="TEI/text/group/text/front/dateline"/></p>
  <p>Recueil : <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title"/></p>
  <p>Auteur : <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/author"/></p>
    </div>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
