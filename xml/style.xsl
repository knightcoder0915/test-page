<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:my="http://localhost"
    exclude-result-prefixes="my">
    <xsl:output method="text"/>

    <my:state>test2</my:state>

    <xsl:template match="/">
        <xsl:text>test1</xsl:text>
        <xsl:value-of select="document('')/*/my:state"/>
    </xsl:template>
</xsl:stylesheet>