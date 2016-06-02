<?xml version="1.0" encoding="UTF-8" ?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:html="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" version="1.0" encoding="iso-8859-1" indent="yes"/>

<xsl:template match="topic">
    <li>
        <a target="Content">
			<xsl:attribute name="href"><xsl:value-of select="@file" />.htm</xsl:attribute>
			<font style="vertical-align:3px;"><xsl:value-of select="@title" /></font>
		</a>
		<ul>
			<xsl:apply-templates select="topic" />
		</ul>
    </li>
</xsl:template>

<xsl:template match="Index">

<html>

<xsl:text disable-output-escaping="yes">
<![CDATA[
<head>

<style>

ul
{
	font-family: Arial;
	font-size: 10pt;
	margin: 0x;
    padding: 0px;
}

li
{
    margin: 0x;
    padding: 0px 0px 0px 20px;
    list-style-type: none;
}

a, a:visited
{
    color: #000;
    text-decoration: none;
}
a:hover
{
    text-decoration: underline;
}

div.flecha
{
    width: 16x;
    height: 16x;
    background-color: #000;
}


</style>


<script type="text/javascript">

function CreaMenu()
{
    var menu = document.getElementById("menu");
    if(menu != null)
    {
        CreaSubMenu(menu);
    }
}

window.onload = CreaMenu;

function CreaSubMenu(llista)
{
    if(llista != null)
    {
        for(var i = 0; i < llista.childNodes.length; i++)
        {
            var li = llista.childNodes.item(i);
            if(li != null)
            {
                var ul = null;           
                for(var n = 0; n < li.childNodes.length; n++)
                {
                    if(li.childNodes.item(n).tagName == "UL")
                    {
                        ul = li.childNodes.item(n);
                        break;
                    }
                }
                
                if(ul != null)
                {
					ul.style.display = "none";

					var subLi = null;   
					for(var n = 0; n < ul.childNodes.length; n++)
					{
						if(ul.childNodes.item(n).tagName == "LI")
						{
							subLi = ul.childNodes.item(n);
							break;
						}
					}

					if(subLi != null)
					{
						li.innerHTML = "<img src='../images/plus.gif' onclick='ExpandCollapse(parentNode);' /><img src='../images/book.gif' />" + li.innerHTML;
					}
					else
					{
						li.innerHTML = "<img src='../images/empty.gif' /><img src='../images/topic.gif' />" + li.innerHTML;
					}

					ul = null;
					for(var n = 0; n < li.childNodes.length; n++)
					{
						if(li.childNodes.item(n).tagName == "UL")
						{
							ul = li.childNodes.item(n);
							break;
						}
					}
					
					if(ul != null)
					{
						CreaSubMenu(ul);
					}
				}
            }
        }
    }
}

function ExpandCollapse(element)
{
    // Treiem els nodes buits
    var notWhitespace = /\S/;
    for(var x = 0; x < element.childNodes.length; x++)
    {
        if((element.childNodes[x].nodeType == 3) && (!notWhitespace.test(element.childNodes[x].nodeValue)))
            element.removeChild(element.childNodes[x--]);
    }
    
    var imatge = element.childNodes.item(0);
    if(imatge != null)
    {
        var llista = element.childNodes.item(element.childNodes.length - 1);
        if(llista != null)
        {
            
            if(llista.style.display == "none" || llista.style.display == "")
            {
                imatge.src = "../images/minus.gif";
                llista.style.display = "block";
            }
            else
            {
                imatge.src = "../images/plus.gif";
                llista.style.display = "none";
            }
        }
    }
}

</script>

</head>
]]>
</xsl:text>

<body>

<div style="margin-left:-20px; width:640;">
<ul id="menu">
	<xsl:apply-templates select="topic" />
</ul>
</div>

</body>

</html>

</xsl:template>

</xsl:stylesheet>