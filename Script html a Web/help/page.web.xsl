<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">
  <xsl:output method="html" version="1.0" encoding="iso-8859-1" indent="yes"/>

  <xsl:template match="content">
    <xsl:copy-of select="." />
  </xsl:template>

  <xsl:template match="chapter">
    <a class="titleLink">
      <xsl:attribute name="href"><xsl:value-of select="@file" />.html</xsl:attribute>
      <xsl:value-of select="@title" />
    </a>
    <xsl:for-each select="chapter"> &gt; </xsl:for-each>
    <xsl:apply-templates select="chapter" />
  </xsl:template>

  <xsl:template match="topic">
    <li>
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="@file" />.html
        </xsl:attribute>
        <xsl:value-of select="@title" />
      </a>
      <xsl:if test="count(topic) &gt; 1">
        <ul>
          <xsl:apply-templates select="topic" />
        </ul>
      </xsl:if>
    </li>
  </xsl:template>

  <xsl:template match="Index">
    <ul>
      <xsl:apply-templates select="topic" />
    </ul>
  </xsl:template>

  <xsl:template match="Page">

    <html>

      <head>
        <title>
          <xsl:value-of select="title" />
        </title>
        <link rel="stylesheet" href="../styles/visualARQ.css" type="text/css" />
        <script type="text/javascript" src="../scripts/MediaPlayer.js"></script>

        <map name="ObjectsToolbarMap">
          <area shape="rect" coords="5,22,30,48" href="Commands_vaWall.html" alt="Wall" />
          <area shape="rect" coords="33,22,59,48" href="Commands_vaCurtainWall.html" alt="Curtain Wall" />
          <area shape="rect" coords="62,22,87,48" href="Commands_vaBeam.html" alt="Beam" />
          <area shape="rect" coords="90,22,115,48" href="Commands_vaColumn.html" alt="Column" />
          <area shape="rect" coords="118,22,143,48" href="Commands_vaDoor.html" alt="Door" />
          <area shape="rect" coords="146,22,171,48" href="Commands_vaWindow.html" alt="Window" />
          <area shape="rect" coords="174,22,199,48" href="Commands_vaStair.html" alt="Stair" />
          <area shape="rect" coords="202,22,227,48" href="Commands_vaRailing.html" alt="Railing" />
          <area shape="rect" coords="230,22,255,48" href="Commands_vaSlab.html" alt="Slab" />
          <area shape="rect" coords="258,22,283,48" href="Commands_vaRoof.html" alt="Roof" />

        </map>

        <map name="WallsToolbarMap">
          <area shape="rect" coords="5,22,30,48" href="Commands_vaWall.html" alt="Wall" />
          <area shape="rect" coords="33,22,59,48" href="Commands_vaWall.html#Wallfromcurves" alt="Wall: From Curve and Set path" />
          <area shape="rect" coords="62,22,87,48" href="Commands_vaWallReverse.html" alt="Wall: Reverse" />
          <area shape="rect" coords="90,22,115,48" href="Commands_vaWallExtendToSrf.html" alt="Wall: Extend and Unextend" />
          <area shape="rect" coords="118,22,143,48" href="Commands_vaWallSplit.html" alt="Wall: Split" />
          <area shape="rect" coords="146,22,171,48" href="Commands_vaWallFromSolid.html" alt="Wall: From Solid and Set Custom Solid" />
          <area shape="rect" coords="174,22,199,48" href="Commands_vaWallAddSolids.html" alt="Wall: Add Solids" />
          <area shape="rect" coords="202,22,227,48" href="Commands_vaWallSubtractSolids.html" alt="Wall: Subtract Solids" />
          <area shape="rect" coords="230,22,255,48" href="Commands_vaWallExtractSolids.html" alt="Wall: Extract Solids" />

        </map>

        <map name="RoofsToolbarMap">
          <area shape="rect" coords="5,22,30,48" href="Commands_vaRoof.html" alt="Roof: From Boundary" />
          <area shape="rect" coords="33,22,59,48" href="Commands_vaRoofAdd.html" alt="Roof: Add Boundary" />
          <area shape="rect" coords="62,22,87,48" href="Commands_vaRoofSubtract.html" alt="Roof: Subtract Boundary" />
          <area shape="rect" coords="90,22,115,48" href="Commands_vaRoofChangeSlopeAngle.html" alt="Roof: Change Slope Angle" />
        </map>

        <map name="SlabsToolbarMap">
          <area shape="rect" coords="5,22,30,48" href="Commands_vaSlab.html" alt="Slab: From Boundary" />
          <area shape="rect" coords="33,22,59,48" href="Commands_vaSlabAdd.html" alt="Slab: Add Boundary" />
          <area shape="rect" coords="62,22,87,48" href="Commands_vaSlabSubtract.html" alt="Slab: Subtract Boundary" />
          <area shape="rect" coords="90,22,115,48" href="Commands_vaSlabChangeThickness.html" alt="Slab: Change Thinckness" />
        </map>

        <map name="DocumentationToolbarMap">
          <area shape="rect" coords="5,22,30,48" href="Commands_vaSpace.html" alt="Space" />
          <area shape="rect" coords="33,22,59,48" href="Commands_vaTable.html" alt="Table" />
          <area shape="rect" coords="62,22,87,48" href="Commands_vaOpeningElevation.html" alt="Opening Elevation" />
          <area shape="rect" coords="90,22,115,48" href="Commands_vaSection.html" alt="Section mark" />
          <area shape="rect" coords="118,22,143,48" href="Commands_vaDynamicSection.html" alt="Dynamic Section" />
          <area shape="rect" coords="146,22,171,48" href="Commands_vaSectionView.html" alt="Section View" />
          <area shape="rect" coords="174,22,199,48" href="Commands_vaPlanView.html" alt="Plan View" />

          <area shape="rect" coords="146,22,171,48" href="Commands_vaDynamicSection.html" alt="Dynamic Section" />

        </map>

        <map name="ToolsToolbarMap">
          <area shape="rect" coords="5,22,30,48" href="Commands_vaLevels.html" alt="Edit Levels" />
          <area shape="rect" coords="33,22,59,48" href="Commands_vaOpeningArray.html" alt="Opening: Array" />
          <area shape="rect" coords="62,22,87,48" href="Commands_vaProfileFromCurve.html" alt="Profile: From Curve" />
          <area shape="rect" coords="90,22,115,48" href="Interface_ObjectProperties.html" alt="Properties" />
          <area shape="rect" coords="118,22,143,48" href="Commands_vaUpdate.html" alt="Update" />
        </map>
      </head>

      <body>

        <div id="entire">

          <!-- Header -->
          <div class="header">
            <div class="topGraphics">
              <img src="../images/header.png" />
            </div>
          </div>

          <!-- Menu -->
          <div id="menu">
            <xsl:apply-templates select="document('../../../../src/help/en-US/index.xml', /)" />
          </div>

          <!-- Breadcrumb -->
          <div id="breadcrumb">
            <xsl:apply-templates select="chapter" />
          </div>

          <!-- Content -->
          <div class="content">
            <xsl:apply-templates select="content" />
          </div>

          <!-- Footer -->
          <div class="footer">
            <xsl:for-each select="Topics">
              <div class="topics">
                <h4>
                  <xsl:value-of select="../Strings/SectionTopics/@value" />
                </h4>
                <ul>
                  <xsl:for-each select="title">
                    <li>
                      <a>
                        <xsl:attribute name="href">
                          <xsl:value-of select="@file" />.html
                        </xsl:attribute>
                        <xsl:value-of select="." />
                      </a>
                    </li>
                  </xsl:for-each>
                </ul>
              </div>
            </xsl:for-each>

            <!-- End graphics -->
            <div class="endGraphics">
              <div class="copyright">
                Copyright &#169; 2000-2014 <a href="http://www.asuni.com/" name="endLink" id="endLink" target="_blank">Asuni CAD S.A.</a>
              </div>
            </div>
          </div>

        </div>

      </body>

    </html>

  </xsl:template>

</xsl:stylesheet>