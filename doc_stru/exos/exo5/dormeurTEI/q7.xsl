<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    <xsl:template match="/">
        <html>
            <body bgcolor="#e6b0aa">
                <xsl:apply-templates select="TEI/text/group/text/body"/> 
            
            </body>
        </html>
        </xsl:template>
    <xsl:template match="body">
        <table border="3" align="left" style="left:27%;top:10%;position:absolute;width:40%">
          
               <xsl:for-each select="lg/lg">
                   <tr><td bgcolor="white"><xsl:text> </xsl:text></td></tr>
                   <xsl:for-each select="l">
                        <tr>
                        <td>
                        <xsl:value-of select="."/>
                       </td>
                   </tr>
                   </xsl:for-each>
               </xsl:for-each>   
           
       
           
       </table>
    </xsl:template>
</xsl:stylesheet>