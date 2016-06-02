
CALL XCOPY "xsl\images\*.*" "..\..\web\%LANG%\images\*.*" /Y
CALL XCOPY "..\..\bin\Common\Help\*.mp4" "..\..\web\%LANG%\videos\*" /Y /S
CALL XCOPY "common\*.*" "..\..\web\%LANG%\*.*" /Y /S
CALL XCOPY "..\help\%LANG%\images\*" "..\..\web\%LANG%\images\*" /Y /S
CALL XCOPY "..\help\common\images\*.*" "..\..\web\%LANG%\images\*.*" /Y
CALL XCOPY "..\help\common\styles\*.*" "..\..\web\%LANG%\styles\*.*" /Y

CALL Bin\buildXmls %LANG%
CALL Bin\buildHtmls %LANG%
