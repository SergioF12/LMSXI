<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
      <body>
      <xsl:variable name="a" select="/ejercicios/ejercicio3/a"/>
      <xsl:variable name="b" select="/ejercicios/ejercicio3/b"/>
      <xsl:variable name="c" select="/ejercicios/ejercicio3/c"/>
      <p> x=<xsl:value-of select="($c - $b) div $a"/></p>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>