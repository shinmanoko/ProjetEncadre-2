<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <body>
                <h2> Classer par auteur</h2>
                <table border="1">
                    <tr bgcolor="red">
                        <th>Auteur</th>
                        <th>Auteur2</th>
                        <th>numeroInventaire</th>
                        <th>numeroAcquisition</th>
                        <th>modeAcquisition</th>
                        <th>donateurVendeur</th>
                        <th>dateAcquis</th>
                        <th>designation</th>
                        <th>designation2</th>
                        <th>domaine</th>
                        <th>matiere</th>
                        <th>technique</th>
                        <th>mesure1</th>
                        <th>mesure2</th>
                        <th>mesure3</th>
                        <th>datation1</th>
                        <th>datation2</th>
                        <th>image</th>
                    </tr>
                    <xsl:for-each select="document/oeuvre">
                        <xsl:sort select="auteur1"/>
                        <xsl:choose>
                        
                        <xsl:when test="auteur1">

                        <tr>
                            <td bgcolor="FFCCCC">
                                
                                <xsl:value-of select="auteur1"/>
                            </td>
                            <td><xsl:value-of select="auteur2"/></td>
                            <td><xsl:value-of select="numeroInventaire"/></td>
                            <td><xsl:value-of select="numeroAcquisition"/></td>
                            <td><xsl:value-of select="modeAcquisition"/></td>
                            <td><xsl:value-of select="donateurVendeur"/></td>
                            <td><xsl:value-of select="dateAcquis"/></td>
                            <td><xsl:value-of select="designation"/></td>
                            <td><xsl:value-of select="designation2"/></td>
                            <td><xsl:value-of select="domaine"/></td>
                            <td><xsl:value-of select="matiere"/></td>
                            <td><xsl:value-of select="technique"/></td>
                            <td><xsl:value-of select="mesure1"/></td>
                            <td><xsl:value-of select="mesure2"/></td>
                            <td><xsl:value-of select="mesure3"/></td>
                            <td><xsl:value-of select="datation1"/></td>
                            <td><xsl:value-of select="datation2"/></td>
                            <td><xsl:value-of select="image"/></td>
                            </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                                <td bgcolor="FFCCCC">Unkown</td>
                                    <td><xsl:value-of select="auteur2"/></td>
                                    <td><xsl:value-of select="numeroInventaire"/></td>
                                    <td><xsl:value-of select="numeroAcquisition"/></td>
                                    <td><xsl:value-of select="modeAcquisition"/></td>
                                    <td><xsl:value-of select="donateurVendeur"/></td>
                                    <td><xsl:value-of select="dateAcquis"/></td>
                                    <td><xsl:value-of select="designation"/></td>
                                    <td><xsl:value-of select="designation2"/></td>
                                    <td><xsl:value-of select="domaine"/></td>
                                    <td><xsl:value-of select="matiere"/></td>
                                    <td><xsl:value-of select="technique"/></td>
                                    <td><xsl:value-of select="mesure1"/></td>
                                    <td><xsl:value-of select="mesure2"/></td>
                                    <td><xsl:value-of select="mesure3"/></td>
                                    <td><xsl:value-of select="datation1"/></td>
                                    <td><xsl:value-of select="datation2"/></td>
                                    <td><xsl:value-of select="image"/></td>
                                </tr>
                            </xsl:otherwise>
                            
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>