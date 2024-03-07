<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:variable name="baseurl" select="/RDWAPage/@baseurl"/>
<xsl:template match="/RDWAPage">
    <html>
      <head id="Head1">
        <xsl:if test="$baseurl">
        <base><xsl:attribute name="href"><xsl:value-of select="$baseurl"/></xsl:attribute></base>
        </xsl:if>
      </head>
    </html>
</xsl:template>
<xsl:template match="/"> 
 <html>
 <head>
 <script/>
 </head> 
 <body>
  <img src="https://hips.hearstapps.com/clv.h-cdn.co/assets/15/22/1432664914-strawberry-facts1.jpg?resize=980:*"/> 
  <h1 align="center">Students' Basic Details</h1> 
   <table border="3" align="center" > 
   <tr> 
    <th>Name</th> 
    <th>Branch</th> 
    <th>Age</th> 
    <th>City</th> 
   </tr> 
    <xsl:for-each select="student/s"> 
   <tr> 
    <td><xsl:value-of select="name"/></td> 
    <td><xsl:value-of select="branch"/></td> 
    <td><xsl:value-of select="age"/></td> 
    <td><xsl:value-of select="city"/></td> 
   </tr> 
    </xsl:for-each> 
    </table> 
</body> 
</html> 
</xsl:template> 
</xsl:stylesheet> 
