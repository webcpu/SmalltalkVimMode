goto-mode
cursorLineEndNoneEmpty: aKeyboardEvent 
 self cursorLineEnd: aKeyboardEvent.
 self cursorBackwardWORDBegin: aKeyboardEvent. 
 self cursorWORDEnd: aKeyboardEvent.
 ^ self normalMode