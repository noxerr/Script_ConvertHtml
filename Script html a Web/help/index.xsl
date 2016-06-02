<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">
<xsl:output method="html" version="1.0" encoding="iso-8859-1" indent="yes"/>

<xsl:template match="topic">
<li/><object type="text/sitemap">
	<param name="Name"><xsl:attribute name="value"><xsl:value-of select="@title" /></xsl:attribute><Dummy/></param>
	<param name="Name"><xsl:attribute name="value"><xsl:value-of select="@title" /></xsl:attribute><Dummy/></param>
	<param name="Local"><xsl:attribute name="value">html/<xsl:value-of select="@file" />.html</xsl:attribute><Dummy/></param>
	</object>
<xsl:apply-templates select="topic" />
</xsl:template>

<xsl:template match="Index">

<html>
<head>
</head>
<body>
<ul>
	<xsl:apply-templates select="topic" />
</ul>
</body>
</html>

</xsl:template>

</xsl:stylesheet>