<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:template match="/">
<html>
<body>
	<h2>Empleados de la empresa</h2>



<xsl:for-each select="employees/employee">
<xsl:if test="salary >= 55000">
<p>Empleado <xsl:value-of select="id"/></p>
<ul>
<li>Nombre: <xsl:value-of select="name"/></li>
<li>Departamento: <xsl:value-of select="department"/></li>
<li>Salario: <xsl:value-of select="salary"/></li>
<li>Antigüedad: <xsl:value-of select="years_of_experience"/></li>
</ul>
</xsl:if>
</xsl:for-each>

  <table border="1">
	<tr bgcolor="#b7fefc">
	<th style="text-align:left">Empleado </th>
	<th style="text-align:left">Nombre</th>
	<th style="text-align:left">Departamento</th>
	<th style="text-align:left">Salario</th>
	<th style="text-align:left">Antigüedad</th>
</tr>
<xsl:for-each select="employees/employee">
<xsl:choose>
<xsl:when test="years_of_experience   &lt;5">
<tr>
<td bgcolor="#a2d895"><xsl:value-of select="id"/></td>
<td bgcolor="#a2d895"><xsl:value-of select="name"/></td>
<td bgcolor="#a2d895"><xsl:value-of select="department"/></td>
<td bgcolor="#a2d895"><xsl:value-of select="salary"/></td>
<td bgcolor="#a2d895"><xsl:value-of select="years_of_experience"/></td>
</tr>
</xsl:when>
<xsl:when test="years_of_experience &gt; 4 and years_of_experience &lt; 7">
<tr>
<td  bgcolor="#e6dc92"><xsl:value-of select="id"/></td>
<td  bgcolor="#e6dc92"><xsl:value-of select="name"/></td>
<td  bgcolor="#e6dc92"><xsl:value-of select="department"/></td>
<td  bgcolor="#e6dc92"><xsl:value-of select="salary"/></td>
<td  bgcolor="#e6dc92"><xsl:value-of select="years_of_experience"/></td>
</tr>
</xsl:when>
<xsl:otherwise >
<tr>
<td  bgcolor="#e48897"><xsl:value-of select="id"/></td>
<td  bgcolor="#e48897"><xsl:value-of select="name"/></td>
<td  bgcolor="#e48897"><xsl:value-of select="department"/></td>
<td  bgcolor="#e48897"><xsl:value-of select="salary"/></td>
<td  bgcolor="#e48897"><xsl:value-of select="years_of_experience"/></td>
</tr>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>