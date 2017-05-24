<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1"/>
<xsl:template match="/table">
  <html>
    <head>
      <title>EXO6-2 Infirmières - Regroupe par Classes Anciennete</title>
    </head>
    <body>
      <br/><br/>
      <h2 align="center">EXO.6 Infirmières</h2>
      <h3 align="center">Regroupe par Classes d'ancienneté</h3>
      <br/>
      <div align="center">
      <table border="1">
        <tr>
          <th align="center">Numéro</th>
          <th align="center">age</th>
          <th align="center">Annees d'études</th>
          <th align="center">Dîplome</th>
          <th align="center">Ancienneté néonatalité</th>
          <th align="center">Service</th>
        </tr>    
        <xsl:for-each select="ligne">
          <xsl:if test="not(preceding-sibling::ligne/classe_anciennete=./classe_anciennete)">
            <tr>
              <td colspan="6" align="center"><xsl:value-of select="./classe_anciennete"/></td>
            </tr>
          </xsl:if>
          <tr>
            <td align="center"><xsl:value-of select="infirmiere"/></td>
            <td align="center"><xsl:value-of select="age"/></td>
            <td align="center"><xsl:value-of select="annees_etudes"/></td>
            <td align="center"><xsl:value-of select="diplome"/></td>
            <td align="center"><xsl:value-of select="anciennete_neonatalite"/></td>
            <td align="center"><xsl:value-of select="service"/></td>
          </tr>
        </xsl:for-each>
      </table>
      </div>
      <br/><br/><br/>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
