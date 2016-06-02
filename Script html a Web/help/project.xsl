<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">
<!--<xsl:output method="xml" version="1.0" encoding="iso-8859-1" indent="yes"/>-->

<xsl:template match="topic">
html/<xsl:value-of select="@file" />.html<xsl:apply-templates select="topic" />
</xsl:template>

<xsl:template match="alias">
<xsl:value-of select="@IDD" />=html/<xsl:value-of select="@file" />.html
</xsl:template>

<xsl:template match="Index">
<![CDATA[

[OPTIONS]
Compatibility=1.1 or later
Compiled file=VisualARQ20.chm
Contents file=Table of Contents.hhc
Index file=Index.hhk
Default topic=html/Introduction.html
Display compile progress=No
Full-text search=Yes
Language=0xc09
Title=]]><xsl:value-of select="@title" />

<![CDATA[

[FILES]]]>
<xsl:apply-templates select="topic" />
<![CDATA[
images/previews/*.png]]>
<![CDATA[
images/previews/*.jpg]]>
<![CDATA[
images/play.png]]>

<![CDATA[

[ALIAS]]]>
<xsl:apply-templates select="alias" />

<![CDATA[
[MAP]]]>
</xsl:template>

</xsl:stylesheet>