CoordMode, Mouse, Screen
SetTimer, Check, 20
return

Check:
MouseGetPos, xx, yy
;PixelGetColor, colorVar, 1264, 658
Tooltip %xx%`, %yy% ;, colorVar
return

Esc::ExitApp	