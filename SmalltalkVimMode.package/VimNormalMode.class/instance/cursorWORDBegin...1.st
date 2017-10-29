default-mode
cursorWORDBegin: aKeyboardEvent
	editor selectAt: (self cursorWORDBeginIndex: aKeyboardEvent).
 ^ self normalMode