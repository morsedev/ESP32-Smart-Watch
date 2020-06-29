/* due to the limited screen size this class is designed to be called in functions to display larger amounts of text to the user.
    Allows for nearly unlimted string data to be stored in the textbox. and then opened/closed
*/

boolean Window::isFocused()
{
  return focused;
}

//sets focus of the window (basically locks everything out except the window until the user touches off the window)
void Window::focus()
{
  focused = true;
  while (focused)
  {
    touch();
    delay(5);
  }
}

//constructor, the width and height should be less than the actual screen. since the exiting method is to
//tap outside of the window
Window::Window(int x, int y, int width, int height, boolean scroll)
{
  _scroll = scroll;

  //if we allow the user to scroll through the text then we need to draw the screen differently
  if (scroll)
  {
    _x = x;
    _y = y;
    x_cursor = x + 2;
    y_cursor = y + 3;
    _width = width - 20; //and change the effective text area
    _height = height;

    //fill in background so we can actually read the text
    tft.fillRect(_x, _y, width, height, BACKGROUND_COLOR);
    tft.drawRect(_x, _y, _width, _height, INTERFACE_COLOR);

    //now add buttons to the right hand side, we use icon buttons for obvious reasons
    WindowUpArrowButton._x = x + width - 20;
    WindowUpArrowButton._width = 20;
    WindowUpArrowButton._height = height / 2;
    WindowUpArrowButton._y = y;

    WindowDownArrowButton._x = x + width - 20;
    WindowDownArrowButton._width = 20;
    WindowDownArrowButton._height = height / 2;
    WindowDownArrowButton._y = y + height / 2;

    //paint buttons
    paintButton(WindowUpArrowButton);
    paintButton(WindowDownArrowButton);
  }
  else
  {
    /*  if we don't allow scrolling then we really don't have nearly as much that needs to be
      done to draw the screen, still more-or-less the same steps though
    */
    _x = x;
    _y = y;
    x_cursor = x + 2;
    y_cursor = y + 1;
    _width = width;
    _height = height;
    tft.fillRect(_x, _y, width, height, BACKGROUND_COLOR);
    tft.drawRect(_x, _y, _width, _height, INTERFACE_COLOR);
  }
}

/*touch handling for all buttons and the screen itself. this function was designed to be completely encapsulated.
*/
void Window::touch()
{
  //check if the screen is actually touched
  if (!digitalRead(TOUCH_IRQ))
  {
    struct point p = readTouch();

#ifdef DEBUG
    Serial.println(String(p.xPos) + " " + String(p.yPos));
#endif
    //if we have scroll buttons then we check the touch status of each of those buttons
    if (_scroll)
    {
      if (checkButtonPress(WindowUpArrowButton, p.xPos, p.yPos))
      {
        if (scrollPosition > 0)
        {
          scrollPosition--;
          drawTextToWindow(true); //since we scrolled we need to redraw the text
        }
      }
      if (checkButtonPress(WindowDownArrowButton, p.xPos, p.yPos))
      {
        scrollPosition++;
        drawTextToWindow(true); //since we scrolled we need to redraw the text
      }

      //repaint buttons in case something went wrong and text overflowed
      paintButtonFull(WindowUpArrowButton);
      paintButtonFull(WindowDownArrowButton);

      //check if user tapped outside of window (this closes window)
      if (p.xPos < _x || p.yPos < _y || p.xPos > _x + _width + 32 || p.yPos > _y + _height)
      {
        focused = false;
      }
    }
    else
    {
      //if we don't have scroll arrows then we only need to check whether touches are inside the window.
      if (p.xPos < _x || p.yPos < _y || p.xPos > _x + _width || p.yPos > _y + _height)
      {
        focused = false;
      }
    }
  }
}

/* this function takes input strings and appends them to the object's textBuffer. this allows (nearly) unlimited data to be added to the
    window to be read by the user.
*/
void Window::print(String Text)
{

  //replace spaces with linebreaks so we don't overflow the window
  int inputPos = 0;
  String inputWord = getValue(Text, ' ', inputPos);

  //we'll use this to determine whether the text overflows
  int xpos = _x + 2;

  /* in essence we check the current x position then determine whether the new word can fit on the same line
    if the new word can't fit on the line then we put it on a new line, otherwise we don't bother.  */
  while (!inputWord.equals(""))
  {
    if (xpos + 6 * inputWord.length() > _x + _width)
    {
      //doesn't fit, new line
      xpos = _x + 2;
      textBuffer += '\n';
      textBuffer += inputWord;
    }
    else
    {
      //fits, add to line
      xpos += 6 * inputWord.length() + 1;
      textBuffer += inputWord + ' ';
    }

    //get next input word
    inputPos++;
    inputWord = getValue(Text, ' ', inputPos);
  }

  //draw text to screen.
  drawTextToWindow(false);
}

//draw the text to the screen (inside the window)
void Window::drawTextToWindow(boolean clr)
{

  //determine how many lines we can fit with the window's height
  int maxLines = _height / 8;

  //set color;
  tft.setTextColor(INTERFACE_COLOR);
  tft.setTextSize(1);

  //if parameter indicates that we should clear the screen then we clear the screen (things like scrolling require this)
  if (clr)
  {
    tft.fillRect(_x + 1, _y + 1, _width - 2, _height - 2, BACKGROUND_COLOR);
  }

#ifdef DEBUG
  //    Serial.println(textBuffer);
#endif

  //set the initial y position
  int ypos = _y + 2;

  //set position
  tft.setCursor(_x + 2, ypos);

  int charactersPerLine = _width / 6;

  /*split text buffer by line breaks, we will write the text to the window one line at a time (since we only want a
    subset of the text buffer's lines). also we give each line of text an extra pixel gap for readability
  */

  int cnt = 0;

  for (int a = scrollPosition; a < scrollPosition + maxLines; a++)
  {
    String line = getValue(textBuffer, '\n', a);

    for (int b = 0; b < line.length(); b++) {
      if (line[b] != '\n') {
        tft.print(line[b]);
        cnt++;
        if (cnt % charactersPerLine == 0) {
          ypos += 8;
          tft.setCursor(_x + 2, ypos);
        }
      } else {
        ypos += 8;
        tft.setCursor(_x + 2, ypos);
      }
    }

    //    ypos += 8;
    //    tft.setCursor(_x + 2, ypos);
  }
}

//print but with line break
void Window::println(String Text)
{
  print(Text + '\n');
}

//taken from stack overflow https://stackoverflow.com/questions/9072320/split-string-into-string-array
String Window::getValue(String data, char separator, int index)
{
  int found = 0;
  int strIndex[] = {0, -1};
  int maxIndex = data.length() - 1;

  for (int i = 0; i <= maxIndex && found <= index; i++)
  {
    if (data.charAt(i) == separator || i == maxIndex)
    {
      found++;
      strIndex[0] = strIndex[1] + 1;
      strIndex[1] = (i == maxIndex) ? i + 1 : i;
    }
  }

  return found > index ? data.substring(strIndex[0], strIndex[1]) : "";
}
