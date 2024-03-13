<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:user="urn:user-functions">

  <msxsl:script language="JScript" implements-prefix="user">
    <![CDATA[
      function calculateDiscount(price) {
        // Apply a 10% discount
        return price * 0.9;
      }
    ]]>
  </msxsl:script>

  <xsl:template match="/">
    <html>
      <body>
        <h2>Items with Discounted Prices</h2>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Discounted Price</th>
          </tr>
          <xsl:for-each select="data/item">
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="price"/></td>
              <td><xsl:value-of select="user:calculateDiscount(price)"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
