<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- <msxsl:script language="JavaScript" src="https://www.bglhs.net/8f02ea19358747a0611683d1b13bee7a/bg_client_rewriting.js?master-0" xmlns:msxsl="urn:schemas-microsoft-com:xslt"> -->
  <xsl:variable name="baseurl" select="/RDWAPage/@baseurl"/>

  <!-- Template for RDWAPage element -->
  <xsl:template match="/RDWAPage">
    <html>
      <head>
            <!-- document.addEventListener('DOMContentLoaded', function() { -->
                <!-- var baseTag = document.getElementById('baseTag'); -->
                <!-- var base = <xsl:value-of select="$baseurl"/>;
                if (baseTag && typeof BGRewriteURL === 'function') {
                    BGRewriteURL(base);
                } -->
            <!-- }); -->
        
        <xsl:if test="$baseurl">
        
        <script>
          if ( typeof BGRewriteURL === 'function') {
                    BGRewriteURL(<xsl:value-of select="$baseurl"/>)
                    <base><xsl:attribute name="href"><xsl:value-of select="$baseurl"/></xsl:attribute></base>;
          }
        </script>
         <base><xsl:attribute name="href"><xsl:value-of select="$baseurl"/></xsl:attribute></base>
        </xsl:if> 
        
      </head>
      <body>
        <h1 align="center">Students' Basic Details</h1>
        <table border="1" align="center">
          <tr>
            <th>Name</th>
            <th>Branch</th>
            <th>Age</th>
            <th>City</th>
          </tr>
          <xsl:apply-templates select="student/s"/>
        </table>
        <img src="https://hips.hearstapps.com/clv.h-cdn.co/assets/15/22/1432664914-strawberry-facts1.jpg?resize=980:*" alt="Strawberry Image" style="display:block; margin:auto;"/>
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
