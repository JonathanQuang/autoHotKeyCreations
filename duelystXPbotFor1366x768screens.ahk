F2::RightSide()
F1::LeftSide()
F3::CycleRightSlot()

CycleRightSlot(){
	LoopIndexR := 2
	while (LoopIndexR < 9){
		SlotX := LoopIndexR*200
		MouseMove, LoopIndexR*100, 660
		Sleep 100
		Click
		Sleep 100
		MouseMove, LoopIndexR*100, 660
		Sleep 100
		Click
		Sleep 100
		MouseMove, 1056, 463
		Sleep 100
		Click
		Sleep 100
		MouseMove, LoopIndexR*100, 660
		Sleep 100
		Click
		Sleep 100
		MouseMove, 1000, 463
		Sleep 100
		Click
		Sleep 100
		MouseMove, LoopIndexR*100, 660
		Sleep 100
		Click
		Sleep 100
		MouseMove, 982, 303
		Sleep 100
		Click
		Sleep 100
		MouseMove, LoopIndexR*100, 660
		Sleep 100
		Click
		Sleep 100
		MouseMove, 1019, 302
		Sleep 100
		Click
		Sleep 100
		MouseMove, LoopIndexR*100, 660
		Sleep 100
		Click
		Sleep 100
		LoopIndexR := LoopIndexR + 1
	}
}

CycleLeftSlot()
{
	LoopIndexL := 2
	while (LoopIndexL < 9){
		SlotX := LoopIndexL*200
		MouseMove, LoopIndexL*100, 660
		Sleep 100
		Click
		Sleep 100
		MouseMove, LoopIndexL*100, 660
		Sleep 100
		Click
		Sleep 100
		MouseMove, 289, 454
		Sleep 100
		Click
		Sleep 100
		MouseMove, LoopIndexL*100, 660
		Sleep 100
		Click
		Sleep 100
		MouseMove, 389, 463
		Sleep 100
		Click
		Sleep 100
		MouseMove, LoopIndexL*100, 660
		Sleep 100
		Click
		Sleep 100
		MouseMove, 309, 303
		Sleep 100
		Click
		Sleep 100
		MouseMove, LoopIndexL*100, 660
		Sleep 100
		Click
		Sleep 100
		MouseMove, 418, 302
		Sleep 100
		Click
		Sleep 100
		MouseMove, LoopIndexL*100, 660
		Sleep 100
		Click
		Sleep 100
		LoopIndexL := LoopIndexL + 1
	}
}



RightSide()
{

	PixelGetColor, Color, 121, 666, Slow
	while (Color != 0xFFFFFF)
	{
		Sleep 10
		PixelGetColor, Color, 121, 666, Slow
		ToolTip, notTurn
	}	

	LoopIndex := 0

	while (LoopIndex < 3)
	{
		Sleep 2000
		MouseMove, 1030, 354
		Send, {LButton down}
		Sleep, 100
		MouseMove, 968,372
		Send, {LButton up}
		CycleRightSlot()
		MouseMove, 1100, 670
		Sleep, 1000
		Click
		Sleep, 3000
		PixelGetColor, Color, 121, 666, Slow
	
	
		while (Color != 0xFFFFFF)
		{
			Sleep 10
			PixelGetColor, Color, 121, 666, Slow
			ToolTip, notTurn
		}	


		Sleep 2000
		MouseMove, 968, 354
		Send, {LButton down}
		Sleep, 100
		MouseMove, 1030,372
		Send, {LButton up}
		CycleRightSlot()
		MouseMove, 1100, 670
		Sleep, 1000
		Click
		Sleep, 3000
		PixelGetColor, Color, 121, 666, Slow
	
		while (Color != 0xFFFFFF)
		{
			Sleep 10
			PixelGetColor, Color, 121, 666, Slow
			ToolTip, notTurn
		}	

		LoopIndex := LoopIndex + 1
	}
	
	Sleep 1000
	MouseMove, 1084, 721
	Click
	Sleep 1000
	MouseMove, 705, 323
	Click
}

LeftSide(){

	PixelGetColor, Color, 121, 666, Slow
	while (Color != 0xFFFFFF)
	{
		Sleep 10
		PixelGetColor, Color, 121, 666, Slow
		ToolTip, notTurn
	}	

	LoopIndex := 0

	while (LoopIndex < 3)
	{
		Sleep 2000
		MouseMove, 292, 354
		Send, {LButton down}
		Sleep, 100
		MouseMove, 370,372
		Send, {LButton up}
		CycleLeftSlot()
		MouseMove, 1100, 670
		Sleep, 1000
		Click
		Sleep, 3000
		PixelGetColor, Color, 121, 666, Slow
	
	
		while (Color != 0xFFFFFF)
		{
			Sleep 10
			PixelGetColor, Color, 121, 666, Slow
			ToolTip, notTurn
		}	


		Sleep 2000
		MouseMove, 370, 354
		Send, {LButton down}
		Sleep, 100
		MouseMove, 292,372
		Send, {LButton up}
		CycleLeftSlot()
		MouseMove, 1100, 670
		Sleep, 1000
		Click
		Sleep, 3000
		PixelGetColor, Color, 121, 666, Slow
	
		while (Color != 0xFFFFFF)
		{
			Sleep 10
			PixelGetColor, Color, 121, 666, Slow
			ToolTip, notTurn
		}	

		LoopIndex := LoopIndex + 1
	}
	
	Sleep 1000
	MouseMove, 1084, 721
	Click
	Sleep 1000
	MouseMove, 705, 323
	Click
}

Esc::ExitApp