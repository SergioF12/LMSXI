﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1> lista de sitios web relevantes  </h1>
                <ol>
                 <xsl:for-each select="datos/elemento">
                  <li><a href="{url}"> <xsl:value-of select="nombre"/> </a>- <xsl:value-of select="descripcion"/></li>
                          </xsl:for-each>
                   </ol>
                   <h2>Tabla de sitios web relevantes</h2>
                   <table>
<tr>
                    <th style="text:aling:left">nombre</th>      
                    <th style="text:aling:left">descripcion</th>        
                    <th style="text:aling:left">url</th>
</tr>
                   <xsl:for-each select="datos/elemento">       
                    <tr> <td><a href="{url}"> <xsl:value-of select="nombre"/> </a></td><td> <xsl:value-of select="descripcion"/></td><td>  <a href="{url}"> <xsl:value-of select="url"/> </a></td>         
                    </tr>
                    </xsl:for-each>   
                   </table>
          </body>
        </html>
    </xsl:template>
</xsl:stylesheet>