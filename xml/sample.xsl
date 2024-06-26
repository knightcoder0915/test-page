<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
  <xsl:output method="xml" indent="yes"/>
  
  <xsl:template match="/">
    <xsl:apply-templates select="Content"/>
  </xsl:template>
  
  <xsl:template match="Content">
    <xsl:apply-templates select="Summary"/>
  </xsl:template>
  
  <xsl:template match="Summary">
    <xsl:copy>
      <xsl:value-of select='replace(., "&amp;", "and")'/>
    </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>