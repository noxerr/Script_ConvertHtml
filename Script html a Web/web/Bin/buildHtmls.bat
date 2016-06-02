DEL ..\..\web\%1\html\*.htm

FOR %%f IN (../../web/%1/xml/*.xml) DO ..\..\libs\help\msxsl "../../web/%1/xml/%%f" pageWeb.xsl -o "../../web/%1/html/%%f"
RENAME ..\..\web\%1\html\*.xml *.htm
XCOPY "..\..\web\%1\html\*.htm" "..\..\web\%1\html\*.html" /Y

FOR %%f IN (../../web/%1/xml/*.xml) DO ..\..\libs\help\msxsl "../../web/%1/xml/%%f" header.xsl -o "../../web/%1/html/header.htm"
..\..\libs\help\msxsl ..\..\web\%1\xml\index.xml tree.xsl -o "..\..\web\%1\html\Tree.htm"

RD /S /Q ..\..\web\%1\xml