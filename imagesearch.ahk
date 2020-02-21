CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.

Loop
{
  ;save images as 24-bit Bitmap in paint
  ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *10 test.bmp

  if (ErrorLevel = 0 )
  {
    break 
  }
  MsgBox Icon could not be found on the screen.
  sleep 1000
}


MsgBox The icon was found at %FoundX%x%FoundY%.
