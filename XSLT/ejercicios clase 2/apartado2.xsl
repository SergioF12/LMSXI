<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:template match="/">
<html>
<body>
	<h2>Empleados de la empresa</h2>



<xsl:for-each select="employees/employee">
<xsl:sort order="descending" select="years_of_experience"/>
<p>Empleado <xsl:value-of select="id"/></p>
<ul>
<li>Nombre: <xsl:value-of select="name"/></li>
<li>Departamento: <xsl:value-of select="department"/></li>
<li>Salario: <xsl:value-of select="salary"/></li>
<li>Antigüedad: <xsl:value-of select="years_of_experience"/></li>
</ul>
</xsl:for-each>

  <table border="1">
	<tr bgcolor="#b7fefc">
	<th style="text-align:left">Employee </th>
	<th style="text-align:left">Name</th>
	<th style="text-align:left">Department</th>
	<th style="text-align:left">Salario</th>
	<th style="text-align:left">Antigüedad</th>
</tr>
<xsl:for-each select="employees/employee">
<xsl:sort order="descending" select="years_of_experience"/>
<tr>
<td><xsl:value-of select="id"/></td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="department"/></td>
<td><xsl:value-of select="salary"/></td>
<td><xsl:value-of select="years_of_experience"/></td>
</tr>
</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
