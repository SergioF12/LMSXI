<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
      <body>
      <xsl:variable name="x" select="ejercicios/ejercicio1/num1"/>
      <xsl:variable name="y" select="ejercicios/ejercicio1/num2"/> 
      <xsl:for-each select="ejercicios/ejercicio1">
      <xsl:choose>
      <xsl:when test="$x &lt; $y">
        <p><xsl:value-of select="$x"/> menor que <xsl:value-of select="$y"/></p>
      </xsl:when>
      <xsl:when test="$x &gt; $y">
        <p><xsl:value-of select="$x"/> mayor que <xsl:value-of select="$y"/></p>
      </xsl:when>
      <xsl:otherwise>
        <p><xsl:value-of select="$x"/> igual que <xsl:value-of select="$y"/></p>
      </xsl:otherwise>
      </xsl:choose>
      </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>