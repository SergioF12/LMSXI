<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
      <body>
      <xsl:variable name="x" select="ejercicios/ejercicio2/num1"/>
      <xsl:variable name="y" select="ejercicios/ejercicio2/num2"/> 
      <xsl:for-each select="ejercicios/ejercicio2">
        <xsl:choose>
          <xsl:when test="$x &lt; 0">
            <p>Los valores absolutos son  <xsl:value-of select="$x*-1"/> y <xsl:value-of select="$y"/></p>
          </xsl:when>
          <xsl:when test="$y &lt; 0">
            <p>Los valores absolutos son  <xsl:value-of select="$x"/> y <xsl:value-of select="$y*-1"/></p>
          </xsl:when>
          <xsl:otherwise>
            <p>Los valores absolutos son  <xsl:value-of select="$x"/> y <xsl:value-of select="$y"/></p>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>