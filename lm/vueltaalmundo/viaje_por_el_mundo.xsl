<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
  <head>
  <style>
  body {
   background-color: #33FFF7;
  }
  table, th, td {
  border: 1px solid black;
  }
 .old {
  color: red
 } 
 
  </style>
  </head>
  <body>

<center><h1>Vuelta al Mundo</h1></center>
 <center><table>
 <tr>
<th>Etapa</th>
<th>Fecha inicio</th>
<th>Origen</th>
<th>Destino</th>
<th>Fecha_Fin</th>
<th>Transporte</th>
<th>Monumento</th>
<th>Diario</th>
<th>Foto</th>
</tr>
 <xsl:for-each select = "mundo/viaje/etapa">
  <tr>
  <td><xsl:value-of select="@id"/></td>
  <td><xsl:value-of select="fecha_inicio"/></td>
  <td><xsl:value-of select="origen"/></td>
  <td><xsl:value-of select="destino"/></td>
  <td><xsl:value-of select="fecha_fin"/></td>
  <td><xsl:value-of select="transporte"/></td>
  <td><xsl:value-of select="monumento"/></td>
  <td><xsl:value-of select="diario"/></td>
  <td><img><xsl:attribute name="src"><xsl:value-of select="foto"/>
  </xsl:attribute></img></td>
  </tr>
</xsl:for-each>
</table></center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

  

