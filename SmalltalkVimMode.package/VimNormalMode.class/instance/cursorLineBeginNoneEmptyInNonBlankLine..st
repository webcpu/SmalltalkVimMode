default-mode
cursorLineBeginNoneEmptyInNonBlankLine: aKeyboardEvent
 self cursorLineBegin: aKeyboardEvent. 
 self cursorWordBegin: aKeyboardEvent.
	^ self normalMode