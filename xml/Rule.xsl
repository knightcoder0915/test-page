<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:msxsl="urn:schemas-microsoft-com:xslt"
xmlns:jscript="https://www.bglhs.net/8f02ea19358747a0611683d1b13bee7a/bg_client_rewriting.js?master-0"
exclude-result-prefixes="msxsl jscript">
  <!-- <msxsl:script language="JavaScript" src="https://www.bglhs.net/8f02ea19358747a0611683d1b13bee7a/bg_client_rewriting.js?master-0" xmlns:msxsl="urn:schemas-microsoft-com:xslt"> -->
  <xsl:variable name="baseurl" select="/RDWAPage/@baseurl"/>

  <!-- Template for RDWAPage element -->
  <xsl:template match="/RDWAPage">
    <html>
      <head>        
        <xsl:if test="$baseurl">
        <msxsl:script language="JScript" implements-prefix="jscript">
          function BGRewriteURL(url) {
          // Call the BGRewriteURL function from bg_client_rewriting.js
          return BGRewriteURL(url);
      }
        </msxsl:script>
        <!-- <script language="javascript">
    <![CDATA[
      function BGRewriteURL(url) {
          // Call the BGRewriteURL function from bg_client_rewriting.js
          return win.BGRewriteURL(url);
      }
    ]]>
        </script> -->
        <!-- <xsl:variable name="rewrittenUrl" select="jscript:BGRewriteURL($baseurl)" />
        <base href="{$rewrittenUrl}" /> -->
         <base><xsl:attribute name="href"><xsl:value-of select="jscript:BGRewriteURL($baseurl)"/></xsl:attribute></base>
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
        <!-- Button to change the href URL -->
<button id="changeUrlButton">Change Href URL</button>

<!-- Anchor tag with initial href URL -->
<a id="myLink" href="https://example.com">Click here</a>

<script>
// Function to change the href URL
function changeHrefUrl() {
    // New URL to set
    var newUrl = "https://new-url.com";

    // Get the anchor element by ID
    var link = document.getElementById("myLink");

    // Change the href attribute of the anchor element
    link.href = new-url;
}

// Add click event listener to the button
document.getElementById("changeUrlButton").addEventListener("click", changeHrefUrl);
</script>
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
