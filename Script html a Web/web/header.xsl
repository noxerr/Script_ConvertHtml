<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" version="1.0" encoding="iso-8859-1" indent="yes"/>

<xsl:template match="Page">

  <html>
    <body leftmargin="0" topmargin="0">
      <head>
        <link rel="stylesheet" href="../styles/visualARQ.css" type="text/css" />
        <script type="text/javascript" src="../scripts/MediaPlayer.js"></script>
      </head>
      <table style="overflow:none" cellspacing="0" cellpadding="0" border="0" width="100%">
       <tr bgcolor="#4286BA">
          <td colspan="3">
            <table cellspacing="0" cellpadding="5" border="0" width="100%" class="title">
              <tr>
                <td align="left"><a href="http://www.asuni.com" target="_parent"></a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td colspan="3">
            <table cellspacing="0" cellpadding="5" border="0" width="100%" class="title2">
              <tr>
                <td align="left">
                  <a href="http://www.asuni.com" target="_parent"></a>
                  <img src="../images/header.png" />
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </body>
  </html>


</xsl:template>

</xsl:stylesheet>