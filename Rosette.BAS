
; rosette example

n=20

NEWTYPE .pt
    x.w:y
End NEWTYPE

Dim p.pt(n)

For i=0 To n-1
    p(i)\x=320+Sin(2*i*Pi/n)*319
    p(i)\y=256+Cos(2*i*Pi/n)*255
Next

Screen 0,25 ;h ire s 1 c o lo u r in te rla c e s c re e n
ScreensBitMap 0,0

For i1 =0 To n-2
    For i2=i1+1 To n-1
        Line p(i1)\x,p(i1)\y,p(i2)\x,p(i2)\y, 1
    Next
Next

Mouse Wait