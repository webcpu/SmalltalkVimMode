default-mode
cursorBackwardWORDBegin: aKeyboardEvent
	editor selectAt: (self cursorBackwardWORDBeginIndex: aKeyboardEvent).
 ^ self normalMode