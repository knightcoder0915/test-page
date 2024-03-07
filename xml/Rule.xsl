<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:variable name="baseurl" select="/RDWAPage/@baseurl"/>

  <!-- Template for RDWAPage element -->
  <xsl:template match="/RDWAPage">
    <html>
      <head>
        <xsl:if test="$baseurl">
          <base href="{$baseurl}"/>
        </xsl:if>
      </head>
      <body>
        <h1 align="center">Students' Basic Details</h1>
        <table border="3" align="center">
          <tr>
            <th>Name</th>
            <th>Branch</th>
            <th>Age</th>
            <th>City</th>
          </tr>
          <xsl:apply-templates select="student/s"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <!-- Template for student/s element -->
  <xsl:template match="s">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="branch"/></td>
      <td><xsl:value-of select="age"/></td>
      <td><xsl:value-of select="city"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
