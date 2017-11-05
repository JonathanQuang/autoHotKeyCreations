CoordMode, Mouse, Screen
SetTimer, WatchCursor, 20
return

WatchCursor:
MouseGetPos X, Y 
PixelGetColor, Color, 121, 666, Slow

if (Color = 0xFFFFFF)
{
	ToolTip, yourTurn
;ToolTip, %Color%
}
else
{
	ToolTip, %Color%
}


return

Esc::ExitApp