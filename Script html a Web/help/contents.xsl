<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" version="1.0" encoding="iso-8859-1" indent="yes"/>

<xsl:template match="topic">
	<li/><object type="text/sitemap">
		<param name="Name"><xsl:attribute name="value"><xsl:value-of select="@title" /></xsl:attribute><Dummy/></param>
		<param name="Local"><xsl:attribute name="value">html/<xsl:value-of select="@file" />.html</xsl:attribute><Dummy/></param>
		</object>
	<ul>
		<xsl:apply-templates select="topic" />
	</ul>
</xsl:template>

<xsl:template match="Index">

<html>
<head>
</head>
<body>
<object type="text/site properties">
	<param name="Window Styles" value="0x800025"></param>
	<param name="Font" value="Arial,9,0"></param>
</object>
<ul>
	<xsl:apply-templates select="topic" />
</ul>
</body>
</html>

</xsl:template>

</xsl:stylesheet>