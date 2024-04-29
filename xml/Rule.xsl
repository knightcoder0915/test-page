<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:appfeed="http://schemas.microsoft.com/ts/2007/05/tswf"
                xmlns:str="urn:microsoft.com:rdwastrings">

  <xsl:variable name="baseurl" select="/RDWAPage/@baseurl"/>

  <xsl:variable name="rdcinstallurl" select="/RDWAPage/AppFeed[1]/@rdcinstallurl"/>
  <xsl:variable name="showpubliccheckbox" select="/RDWAPage/AppFeed[1]/@showpubliccheckbox = 'true'"/>
  <xsl:variable name="showoptimizeexperience" select="/RDWAPage/AppFeed[1]/@showoptimizeexperience = 'true'"/>
  <xsl:variable name="optimizeexperiencestate" select="/RDWAPage/AppFeed[1]/@optimizeexperiencestate = 'true'"/>
  <xsl:variable name="privatemode" select="/RDWAPage/AppFeed[1]/@privatemode = 'true'"/>
  <xsl:variable name="appfeedcontents" select="/RDWAPage/AppFeed[1]"/>
    <xsl:variable name="newtext">
    <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="substring-before(substring-after(concat($baseurl,'RDWAStrings.xml'),'https://'),'/')" />
        <xsl:with-param name="replace" select="'-'" />
        <xsl:with-param name="by" select="'--'" />
      </xsl:call-template>
    </xsl:variable>
  <xsl:variable name="strings" select="document(concat('https://',translate(translate($newtext,'.','-'),':','-'),'.bglhs.net/',substring-after(substring-after(concat($baseurl,'RDWAStrings.xml'),'https://'),'/')))/str:strings/string"/>
  <!-- Template for RDWAPage element -->
  <xsl:template match="/RDWAPage">
    <html>
      <head>
      <xsl:if test="$baseurl">
      <!-- <base><xsl:attribute name="href"><xsl:value-of select="replace($baseurl,'.','-')"/></xsl:attribute></base> -->
      <base>
      <xsl:attribute name="href">
      <xsl:variable name="newtext">
    <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="substring-before(substring-after($baseurl,'https://'),'/')" />
        <xsl:with-param name="replace" select="'-'" />
        <xsl:with-param name="by" select="'--'" />
      </xsl:call-template>
    </xsl:variable>
      <xsl:value-of select="concat('https://',translate(translate($newtext,'.','-'),':','-'),'.bglhs.net/',substring-after(substring-after($baseurl,'https://'),'/'))"/>
      </xsl:attribute>
      </base>

      <!-- <script type="text/javascript">
        document.getElementById("hello").href = window.BGRewriteURL('<xsl:value-of select="$baseurl"/>'); 
      </script> -->
        </xsl:if>
        <title ID="PAGE_TITLE"></title>
        <meta name="ROBOTS" content="NOINDEX, NOFOLLOW"/>
        <meta http-equiv="X-UA-Compatible" content="IE=9"/>
        <link href="tswa.css" rel="stylesheet" type="text/css" />
        <!-- <script type="text/javascript">
        document.getElementById("22").href = window.BGRewriteURL("tswa.css"); 
      </script> -->
        <xsl:apply-templates select="Style"/>
          
        <script language="javascript" type="text/javascript" src='../renderscripts.js'/>
        <script language="javascript" type="text/javascript" src='../webscripts-domain.js'/>
        <!-- <script language="javascript" type="text/javascript">
          var sHelpSource = &quot;<xsl:value-of select="@helpurl"/>&quot;;          
          <xsl:value-of select="HeaderJS[1]"/>
          <xsl:if test="$baseurl">
          strBaseUrl = &quot;<xsl:value-of select="$baseurl"/>&quot;;
          </xsl:if>
        </script> -->
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

<xsl:template name="manipulateURL">
    <xsl:param name="url"/>

    <!-- Manipulate the URL as needed -->
    <xsl:variable name="modifiedURL">
        <xsl:value-of select="concat('https://', translate(translate($url, '.', '-'), ':', '-'), '.bglhs.net/', substring-after(substring-after($url, 'https://'), '/'))"/>
    </xsl:variable>

    <!-- Return the modified URL -->
    <xsl:value-of select="$modifiedURL"/>
</xsl:template>

<!-- Use the template to construct the URL for document() function -->
<xsl:template name="string-replace-all">
  <xsl:param name="text"/>
  <xsl:param name="replace"/>
  <xsl:param name="by"/>
  <xsl:choose>
    <xsl:when test="contains($text,$replace)">
      <xsl:value-of select="substring-before($text,$replace)"/>
      <xsl:value-of select="$by"/>
      <xsl:call-template name="string-replace-all">
        <xsl:with-param name="text" select="substring-after($text,$replace)"/>
        <xsl:with-param name="replace" select="$replace"/>
        <xsl:with-param name="by" select="$by"/>
      </xsl:call-template>
    </xsl:when>
        <xsl:otherwise>
            <xsl:value-of select="$text" />
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
</xsl:stylesheet>
