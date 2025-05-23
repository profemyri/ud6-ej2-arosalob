<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Catalog of Hobbies</title>
      </head>
      <body>
        <h1>Catalog of Hobbies</h1>
        <xsl:for-each select="/hobbies/hobby">
          <div class="hobby">
            <h2><xsl:value-of select="name"/></h2>
            <p>Capturing moments through the lens of a camera, exploring the art of visual storytelling.</p>
            <p><xsl:text>Popularity: </xsl:text><xsl:value-of select="popularity"/></p>
            <xsl:if test="(@difficulty!='')">
            <p><xsl:text>Difficulty: </xsl:text><xsl:value-of select="@difficulty"/></p>
            </xsl:if>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>

  

</xsl:stylesheet>