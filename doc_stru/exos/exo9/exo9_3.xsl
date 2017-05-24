<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                
            </head>
            <body>
                <xsl:for-each select="document/oeuvre">
                    <xsl:sort select="auteur1"/>
                    <xsl:choose>
                        <xsl:when test="auteur1">
                            <br/>
                            <font color="#3366ff"><u><h class="title"><xsl:value-of select="auteur1"/></h></u></font>
                            <div class="info" style="display:none"><xsl:value-of select="."/></div>
                        </xsl:when>
                        <xsl:otherwise>
                            <br/>
                            <font color="#3366ff"><u><h class="title">Unkown</h></u></font>
                            <div class="info" style="display:none"><xsl:value-of select="."/></div>
                        </xsl:otherwise>
                        
                    </xsl:choose>
                    
                        
                </xsl:for-each>
            </body>
            <script>
                var listTitle = document.getElementsByClassName("title");
                var listInfo = document.getElementsByClassName("info");
                var listBool = new Array();
                for(i=0;i &#60;listTitle.length;i++){
                    listBool.push(false);
                }

                for(i=0;i &#60;listTitle.length;i++){
                    listTitle[i].onclick = function(paramTitle){
                        index = indexOfArray(listTitle, paramTitle.target)
                        console.log(index);
                        if(listBool[index]){
                            listBool[index] = false;
                            listInfo[index].style.display = "none";
                        }else{
                            listBool[index] = true;
                            listInfo[index].style.display = "block";
                        }
                    };
                }

                function indexOfArray(arr, ele){
                    l=arr.length;
                    for(i=0;i &#60;l;i++){
                        if(arr[i]==ele)
                            return i
                    }
                    return -1;
                }
                
            </script>
        </html>
    </xsl:template>
    
</xsl:stylesheet>