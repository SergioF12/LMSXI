<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="library">
    <html>
      <head>
        <title>Library Catalog</title>
      </head>
      <body>
        <h1>Library Catalog</h1>
        <table border="1">
          <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
            <th>Price</th>
            <th>Availability</th>
            <th>Reviews</th>
          </tr>
          <xsl:apply-templates select="book"/>
        </table>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="book">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="author"/></td>
      <td><xsl:value-of select="genre"/></td>
      <td><xsl:text>$</xsl:text><xsl:value-of select="price"/></td>
      <xsl:choose>
        <xsl:when test="available='true'">
          <td style="color:#30ff06;">Available</td>
        </xsl:when>
        <xsl:otherwise>
          <td style="color:#ff0606;">Out of Stock</td>
        </xsl:otherwise>
      </xsl:choose>
      <td>
        <ul>
          <xsl:apply-templates select="reviews/review"/>
        </ul>
      </td>
    </tr>
  </xsl:template>
  
</xsl:stylesheet>
