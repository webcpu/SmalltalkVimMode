default-mode
cursorWORDEnd: aKeyboardEvent
	editor selectAt: (self cursorWORDEndIndex: aKeyboardEvent).
	^ self normalMode