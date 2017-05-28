<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="center.css" />
  </head>
  
      <body>

    <div>
<table border="1">
<tr>
  <th bgcolor="#00AADD" align="left">Produit</th>
  <th bgcolor="#A9AFAC" align="left">Contenance</th>
  <th bgcolor="#A9AFAC" align="left">Ions positifs calcium</th>
  <th bgcolor="#A9AFAC" align="left">Ions positifs magnésium</th>
  <th bgcolor="#A9AFAC" align="left">Ions négatif chlorures</th>
  <th bgcolor="#A9AFAC" align="left">Ions négatif nitrate</th>
  <th bgcolor="#A9AFAC" align="left">Autres particules</th>
  <th bgcolor="#A9AFAC" align="left">Source</th>
  <th bgcolor="#A9AFAC" align="left">Code barre</th>
  <th bgcolor="#A9AFAC" align="left">pH</th>
</tr>
<xsl:for-each select="article/partie">
<tr>
  <td bgcolor="6FECF9">
    <xsl:value-of select="title"/>
  </td>
  <td>
    <xsl:value-of select="contenance"/>
  </td>
  <td>
    <xsl:value-of select="Ions1"/>
  </td>
  <td>
    <xsl:value-of select="Ions2"/>
  </td>
  <td>
    <xsl:value-of select="Ions3"/>
  </td>
  <td>
    <xsl:value-of select="Ions4"/>
  </td>
  <td>
    <xsl:value-of select="particules"/>
  </td>
  <td>
    <xsl:value-of select="source"/>
  </td>
  <td>
    <xsl:value-of select="code"/>
  </td>
   <td>
    <xsl:value-of select="ph"/>
  </td>
</tr>
</xsl:for-each>
</table>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
