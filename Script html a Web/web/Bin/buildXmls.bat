CD ..\..\web\%1

MKDIR xml
MKDIR html

CD ..\..\src\help
..\..\libs\help\paginate "%1\index.xml" "%1\html\" "..\..\web\%1\xml\" "..\..\..\loc\%1\resources\ui.xml" "%1\commands.xml" "..\help\common\alias.xml" "%1\strings.xml"

CD ..\web
