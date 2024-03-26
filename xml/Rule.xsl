<?xml version="1.0" encoding="UTF-8"?>
  <xsl:variable name="baseurl" select="/RDWAPage/@baseurl"/>
  <script></script>

  <xsl:template match="/RDWAPage">
    <html>
      <head>
      <xsl:if test="$baseurl">
      <img>
      <xsl:attribute name="id">hello</xsl:attribute><xsl:attribute name="src"><xsl:value-of select="$baseurl"/></xsl:attribute></img> 
      <script type="text/javascript">
        document.getElementById("hello").src = '<xsl:value-of select="$baseurl"/>'; 
      </script> 
        </xsl:if>
      <title ID="PAGE_TITLE"><xsl:value-of select="$strings[@id = 'PageTitle']"/></title>
        <meta name="ROBOTS" content="NOINDEX, NOFOLLOW"/>
        <meta http-equiv="X-UA-Compatible" content="IE=9"/>
        <link id="22" href="tswa.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript">
        document.getElementById("22").href = "tswa.css"; 
        </script>
        <xsl:apply-templates select="Style"/>
          
        <script language="javascript" type="text/javascript" src='../renderscripts.js'/>
        <script language="javascript" type="text/javascript" src='../webscripts-domain.js'/>
        <script language="javascript" type="text/javascript">
          var sHelpSource = &quot;<xsl:value-of select="@helpurl"/>&quot;;          
          <xsl:value-of select="HeaderJS[1]"/>
          <xsl:if test="$baseurl">
          strBaseUrl = &quot;<xsl:value-of select="$baseurl"/>&quot;;
          </xsl:if>
        </script>
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
