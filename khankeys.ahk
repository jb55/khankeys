
#IfWinActive SmoothDraw

1::SelectColor(0)
2::SelectColor(1)
3::SelectColor(2)
4::SelectColor(3)

5::SelectColor(4)
6::SelectColor(5)
7::SelectColor(6)
8::SelectColor(7)

9::SelectColor(8)
0::SelectColor(9)

#IfWinActive


SelectColor(n) {
	MouseGetPos,mx,my
	ControlGetPos,X,Y,,,colorGrid1,SmoothDraw

	px := X + Mod(n, 8) * 16 + 3
	py := Y + (n > 7 ? 16 : 0) + 8

	Click %px%, %py%
	MouseMove,mx,my,0
}
