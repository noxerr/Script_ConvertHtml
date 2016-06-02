<?xml version="1.0" encoding="UTF-8" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" version="1.0" encoding="iso-8859-1" indent="yes"/>

<xsl:template match="content">
  <xsl:copy-of select="." />
</xsl:template>

<xsl:template match="chapter">
  	<a class="titleLink">
		<xsl:attribute name="href"><xsl:value-of select="@file" />.html</xsl:attribute>
		<xsl:value-of select="@title" />
	</a>
	<xsl:for-each select="chapter"> > </xsl:for-each><xsl:apply-templates select="chapter" />
</xsl:template>

<xsl:template match="Page">

<html>

<head>
	<title><xsl:value-of select="title" /></title>
	<link rel="stylesheet" href="../styles/visualARQ.css" type="text/css" />
	<script type="text/javascript" src="../scripts/MediaPlayer.js"></script>
</head>
 
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
 
<table cellspacing="0" cellpadding="0" border="0" width="100%">
<!--tr bgcolor="#4286BA">
	<td colspan="3">
		<table cellspacing="0" cellpadding="5" border="0" width="100%" class="title">
		<tr>
			<td align="left" valign="top"><i><xsl:value-of select="Strings/titulo/@value" /></i></td>
			<td align="center" valign="top"><a class="titleLink"><xsl:attribute name="href"><xsl:value-of select="Strings/urlWeb/@value" /></xsl:attribute><xsl:value-of select="Strings/volverALaWeb/@value" /></a></td>
			<td align="right" valign="top"><a href="http://www.asuni.es"><img src="../images/logoAsuni.jpg" border="0" style="margin-top:-5px;" /></a></td>
		</tr>
		</table>
	</td>
</tr>
<tr bgcolor="#000000">
	<td colspan="3"><img src="../images/pixel.gif" border="0" width="1" height="1" /></td>
</tr-->
<tr>
	<td><img src="../images/pixel.gif" border="0" width="20" height="20" /></td>
	<td width="100%">
		<table cellspacing="0" cellpadding="0" border="0" width="100%" class="titleLink">
		<tr>
			<td align="left" valign="top"><xsl:apply-templates select="chapter" /></td>
			<td align="right" valign="top">
				<a class="titleLink" onClick="top.frames['Header'].location.href='../../es-ES/html/header.htm'; top.frames['Tree'].location.href='../../es-ES/html/Tree.htm';"><xsl:attribute name="href">../../es-ES/html/<xsl:value-of select="file" />.htm</xsl:attribute>Español</a>
				<font class="titleLink"> | </font>
				<a class="titleLink" onClick="top.frames['Header'].location.href='../../en-US/html/header.htm'; top.frames['Tree'].location.href='../../en-US/html/Tree.htm';"><xsl:attribute name="href">../../en-US/html/<xsl:value-of select="file" />.htm</xsl:attribute>English</a>
				<font class="titleLink"> | </font>
				<a class="titleLink" onClick="top.frames['Header'].location.href='../../fr-FR/html/header.htm'; top.frames['Tree'].location.href='../../fr-FR/html/Tree.htm';"><xsl:attribute name="href">../../fr-FR/html/<xsl:value-of select="file" />.htm</xsl:attribute>Français</a>
				<font class="titleLink"> | </font>
				<a class="titleLink" onClick="top.frames['Header'].location.href='../../de-DE/html/header.htm'; top.frames['Tree'].location.href='../../de-DE/html/Tree.htm';"><xsl:attribute name="href">../../de-DE/html/<xsl:value-of select="file" />.htm</xsl:attribute>Deutsch</a>
				<font class="titleLink"> | </font>
				<a class="titleLink" onClick="top.frames['Header'].location.href='../../it-IT/html/header.htm'; top.frames['Tree'].location.href='../../it-IT/html/Tree.htm';"><xsl:attribute name="href">../../it-IT/html/<xsl:value-of select="file" />.htm</xsl:attribute>Italiano</a>
			</td>
		</tr>
		</table>
	</td>
	<td><img src="../images/pixel.gif" border="0" width="15" height="1" /></td>
</tr>
<tr>
	<td colspan="3">
		<table border="0" cellspacing="0" cellpadding="0" width="100%">
		<tr>
<xsl:choose>
<xsl:when test="numProcedures &gt; 0">
			<td>
				<table border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#4286BA"><td><img src="../images/pixel.gif" border="0" width="20" height="25" /></td></tr>
				<tr bgcolor="#ffffff"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				<tr bgcolor="#4286BA"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				<tr bgcolor="#ffffff"><td><img src="../images/pixel.gif" border="0" width="1" height="2" /></td></tr>
				<tr bgcolor="#4286BA"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				</table>
			</td>
			<td bgcolor="#ffffff">
				<table border="0" cellspacing="0" cellpadding="0">
	<xsl:choose>
	<xsl:when test="isProcedure &lt; 1">
				<tr>
					<td bgcolor="#4286BA"><img src="../images/pixel.gif" border="0" width="1" height="30" /></td>
					<td>
						<div style="padding-top:0px; padding-bottom:0px; padding-right:15px; padding-left:15px;" class="selectedTab">
							<xsl:value-of select="Strings/concepto/@value" />
						</div>
					</td>
					<td bgcolor="#4286BA"><img src="../images/pixel.gif" border="0" width="1" height="1" /></td>
				</tr>
	</xsl:when>
	<xsl:otherwise>
				<tr bgcolor="#4286BA"><td colspan="3"><img src="../images/pixel.gif" border="0" width="1" height="2" /></td></tr>
				<tr>
					<td bgcolor="#4286BA"><img src="../images/pixel.gif" border="0" width="1" height="24" /></td>
					<td bgcolor="#CEECDC">
						<div style="padding-top:0px; padding-bottom:0px; padding-right:15px; padding-left:15px;">
							<a class="unselectedTab">
								<xsl:attribute name="href"><xsl:value-of select="file" />.htm</xsl:attribute>
								<xsl:value-of select="Strings/concepto/@value" />
							</a>
						</div>
					</td>
					<td bgcolor="#4286BA"><img src="../images/pixel.gif" border="0" width="1" height="1" /></td>
				</tr>
				<tr bgcolor="#4286BA"><td colspan="3"><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				<tr bgcolor="#ffffff"><td colspan="3"><img src="../images/pixel.gif" border="0" width="1" height="2" /></td></tr>
				<tr bgcolor="#4286BA"><td colspan="3"><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
	</xsl:otherwise>
	</xsl:choose>
				</table>
			</td>
			<td>
				<table border="0" cellspacing="0" cellpadding="0">
				<tr bgcolor="#4286BA"><td><img src="../images/pixel.gif" border="0" width="5" height="25" /></td></tr>
				<tr bgcolor="#ffffff"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				<tr bgcolor="#4286BA"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				<tr bgcolor="#ffffff"><td><img src="../images/pixel.gif" border="0" width="1" height="2" /></td></tr>
				<tr bgcolor="#4286BA"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				</table>
			</td>
			<td bgcolor="#ffffff">
				<table border="0" cellspacing="0" cellpadding="0">
	<xsl:choose>
	<xsl:when test="isProcedure &gt; 0">
				<tr>
					<td bgcolor="#4286BA"><img src="../images/pixel.gif" border="0" width="1" height="30" /></td>
					<td>
						<div style="padding-top:0px; padding-bottom:0px; padding-right:15px; padding-left:15px;" class="selectedTab">
							<a class="selectedTab">
								<xsl:attribute name="href"><xsl:value-of select="file" />-procedure.htm</xsl:attribute>
								<xsl:value-of select="Strings/procedimiento/@value" />
							</a>
						</div>
					</td>
					<td bgcolor="#4286BA"><img src="../images/pixel.gif" border="0" width="1" height="1" /></td>
				</tr>
	</xsl:when>
	<xsl:otherwise>
				<tr bgcolor="#4286BA"><td colspan="3"><img src="../images/pixel.gif" border="0" width="1" height="2" /></td></tr>
				<tr>
					<td bgcolor="#4286BA"><img src="../images/pixel.gif" border="0" width="1" height="24" /></td>
					<td bgcolor="#CEECDC">
						<div style="padding-top:0px; padding-bottom:0px; padding-right:15px; padding-left:15px;">
							<a class="unselectedTab">
								<xsl:attribute name="href"><xsl:value-of select="file" />-procedure.htm</xsl:attribute>
								<xsl:value-of select="Strings/procedimiento/@value" />
							</a>
						</div>
					</td>
					<td bgcolor="#4286BA"><img src="../images/pixel.gif" border="0" width="1" height="1" /></td>
				</tr>
				<tr bgcolor="#4286BA"><td colspan="3"><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				<tr bgcolor="#ffffff"><td colspan="3"><img src="../images/pixel.gif" border="0" width="1" height="2" /></td></tr>
				<tr bgcolor="#4286BA"><td colspan="3"><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
	</xsl:otherwise>
	</xsl:choose>
				</table>
			</td>
			<td width="100%">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr bgcolor="#4286BA"><td><img src="../images/pixel.gif" border="0" width="1" height="25" /></td></tr>
				<tr bgcolor="#ffffff"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				<tr bgcolor="#4286BA"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				<tr bgcolor="#ffffff"><td><img src="../images/pixel.gif" border="0" width="1" height="2" /></td></tr>
				<tr bgcolor="#4286BA"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				</table>
			</td>
</xsl:when>
<xsl:otherwise>
			<td width="100%">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr bgcolor="#ffffff"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				<tr bgcolor="#529A74"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				<tr bgcolor="#ffffff"><td><img src="../images/pixel.gif" border="0" width="1" height="2" /></td></tr>
				<tr bgcolor="#529A74"><td><img src="../images/pixel.gif" border="0" width="1" height="1" /></td></tr>
				</table>
			</td>
</xsl:otherwise>
</xsl:choose>
		</tr>
		</table>
	</td>
</tr>
</table>

<div class="content">
	<xsl:for-each select="procedureTitle">
		<font class="topic"><xsl:value-of select="." /></font><br/>
	</xsl:for-each>

	<xsl:apply-templates select="content" />

	<xsl:for-each select="toolbar">
		<br/>
		<font class="procedureCall"><img src="../images/mouseIcon.gif" border="0" /><xsl:text> </xsl:text><a href="Barra de herramientas.htm" class="procedureCall"><xsl:value-of select="../Strings/barraDeHerramientas/@value" /></a>:<xsl:text> </xsl:text></font><b><xsl:value-of select="." /></b><xsl:text> </xsl:text><img border="0"><xsl:attribute name="src">../images/<xsl:value-of select="../toolbarIcon" /></xsl:attribute></img><br/>
	</xsl:for-each>
	<xsl:for-each select="menu">
		<br/>
		<font class="procedureCall"><img src="../images/mouseIcon.gif" border="0" /><xsl:text> </xsl:text><a href="Menú desplegable.htm" class="procedureCall"><xsl:value-of select="../Strings/barraDeMenu/@value" /></a>:<xsl:text> </xsl:text></font><i><xsl:value-of select="." /></i><br/>
	</xsl:for-each>
	<xsl:for-each select="contextMenu">
		<br/>
		<font class="procedureCall"><img src="../images/mouseIcon.gif" border="0" /><xsl:text> </xsl:text><a href="Menú contextual.htm" class="procedureCall"><xsl:value-of select="../Strings/menuContextualDeSeleccion/@value" /></a>:<xsl:text> </xsl:text></font><i><xsl:value-of select="." /></i><br/>
	</xsl:for-each>
	<xsl:for-each select="drawingMenu">
		<br/>
		<font class="procedureCall"><img src="../images/mouseIcon.gif" border="0" /><xsl:text> </xsl:text><a href="Menú contextual.htm" class="procedureCall"><xsl:value-of select="../Strings/menuContextualDeDibujo/@value" /></a>:<xsl:text> </xsl:text></font><i><xsl:value-of select="." /></i><br/>
	</xsl:for-each>
	<xsl:for-each select="command">
		<br/>
		<font class="procedureCall"><img src="../images/keyboardIcon.gif" border="0" /><xsl:text> </xsl:text><xsl:value-of select="../Strings/comando/@value" />:<xsl:text> </xsl:text></font><font class="command">la<xsl:value-of select="." /></font><br/>
	</xsl:for-each>

	<xsl:for-each select="Procedures">
		<xsl:for-each select="title">
			<br/>
			<a class="topic">
				<xsl:attribute name="href"><xsl:value-of select="../../file" />-procedure<xsl:value-of select="@index" />.htm</xsl:attribute>
				<xsl:value-of select="." />
			</a><br/>
		</xsl:for-each>
	</xsl:for-each>

	<xsl:for-each select="CommandsList">
		<xsl:for-each select="command">
			<dl>
				<dt><li type="square" /><font class="command">la<xsl:value-of select="@name" /></font></dt>
				<dd>
					<img src="../images/pixel.gif" border="0" width="1" height="4" /><br/>
					<xsl:value-of select="." /><br/>
					<xsl:for-each select="procedure">
						<img src="../images/pixel.gif" border="0" width="1" height="5" /><br/>
						<a class="content">
							<xsl:attribute name="href"><xsl:value-of select="@file" />.htm</xsl:attribute>
							<xsl:value-of select="@title" />
						</a><br/>
					</xsl:for-each>
					<img src="../images/pixel.gif" border="0" width="1" height="8" /><br/>
					<xsl:for-each select="@toolbar">
						<font class="procedureCall"><img src="../images/mouseIcon.gif" border="0" /><xsl:text> </xsl:text><a href="Barra de herramientas.htm" class="procedureCall"><xsl:value-of select="../../../Strings/barraDeHerramientas/@value" /></a>:<xsl:text> </xsl:text></font><b><xsl:value-of select="." /></b><xsl:text> </xsl:text><img border="0"><xsl:attribute name="src">../images/<xsl:value-of select="../@toolbarIcon" /></xsl:attribute></img><br/>
					</xsl:for-each>
					<xsl:for-each select="@menu">
						<font class="procedureCall"><img src="../images/mouseIcon.gif" border="0" /><xsl:text> </xsl:text><a href="Menú desplegable.htm" class="procedureCall"><xsl:value-of select="../../../Strings/barraDeMenu/@value" /></a>:<xsl:text> </xsl:text></font><i><xsl:value-of select="." /></i><br/>
					</xsl:for-each>
					<xsl:for-each select="@contextMenu">
						<font class="procedureCall"><img src="../images/mouseIcon.gif" border="0" /><xsl:text> </xsl:text><a href="Menú contextual.htm" class="procedureCall"><xsl:value-of select="../../../Strings/menuContextualDeSeleccion/@value" /></a>:<xsl:text> </xsl:text></font><xsl:value-of select="." /><br/>
					</xsl:for-each>
					<xsl:for-each select="@drawingMenu">
						<font class="procedureCall"><img src="../images/mouseIcon.gif" border="0" /><xsl:text> </xsl:text><a href="Menú contextual.htm" class="procedureCall"><xsl:value-of select="../../../Strings/menuContextualDeDibujo/@value" /></a>:<xsl:text> </xsl:text></font><xsl:value-of select="." /><br/>
					</xsl:for-each>
				</dd>
			</dl>
			<br/>
		</xsl:for-each>
	</xsl:for-each>
</div>

<xsl:for-each select="Topics">
<table cellspacing="0" cellpadding="20" border="0" width="100%">
<tr>
	<td>
		<table cellspacing="0" cellpadding="0" border="0" width="100%" class="content">
		<tr><td colspan="2" bgcolor="#529A74"><img src="../images/pixel.gif" width="1" height="1" border="0" /></td></tr>
		<tr>
			<td class="content">
			<xsl:value-of select="../Strings/temasEnEsteApartado/@value" />:
			</td>
			<td><img src="../images/pixel.gif" width="1" height="32" border="0" /></td>
		</tr>
		<xsl:for-each select="title">
		<tr>
			<td>
			<li type="square">
				<a class="topic">
					<xsl:attribute name="href"><xsl:value-of select="@file" />.htm</xsl:attribute>
					<xsl:value-of select="." />
				</a>
			</li>
			</td>
			<td><img src="../images/pixel.gif" width="1" height="24" border="0" /></td>
		</tr>
		</xsl:for-each>
		</table>
	</td>
</tr>
</table>
</xsl:for-each>

  <!-- End graphics -->
  <div class="endGraphics">
    <div class="aligncenter" style="width:100%;height:1px;background-color:#AAAAAA;font-size:0;">-</div>
    <div class="aligncenter" style="width:100%;height:5px;background-color:#FFFFFF;font-size:0;">-</div>
    <div class="copyright">
      Copyright &#169; 2000-2014 <a href="http://www.asuni.com/" name="endLink" id="endLink" target="_blank">Asuni CAD S.A.</a>
    </div>
  </div> 
  
<!--<table border="1" rules="rows" cellspacing="0" cellpadding="0" width="100%">
<tr>
	<td><img src="../images/pixel.gif" border="0" width="20" height="40" /></td>
	<td width="100%" class="bottomText" valign="bottom">Copyright &#169; 2000-2014<a href="http://www.asuni.com/" name="endLink" id="endLink" target="_blank">Asuni CAD S.A.</a>
</td>
</tr>
</table>-->
 
</body>
 
</html>

</xsl:template>

</xsl:stylesheet>