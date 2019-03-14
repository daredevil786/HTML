<?xml version="1.0"?>
 <xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:template match="/student">
 <html>
 <table border="1">
 <tr>
  <th>USN</th><th>name</th><th>college</th><th>branch</th><th>year of joining</th><th>email-id</th>
 </tr>
  <xsl:for-each select="info">
  <xsl:if test="(position(1) mod 2 = 1)">
    <xsl:attribute name="bgcolor">red</xsl:attribute>
  </xsl:if>
  <td><xsl:value-of select="usn"/></td>
  <td><xsl:value-of select="name"/></td>
  <td><xsl:value-of select="coll"/></td>
  <td><xsl:value-of select="branch"/></td>
  <td><xsl:value-of select="yoj"/></td>
  <td><xsl:value-of select="email"/></td>
 </tr> 
 </xsl:for-each>
 </table>
 </html>
 </xsl:template>
 </xsl:stylesheet>