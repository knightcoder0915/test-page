<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" >
<xsl:output method="xml" indent="yes"/>
<xsl:template match="/">
<xsl:for-each select="Content">
<xsl:for-each select="Summary">
<!-- <xsl:value-of select=" replace(current(),'&amp;','and')"/> -->
</xsl:for-each>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>