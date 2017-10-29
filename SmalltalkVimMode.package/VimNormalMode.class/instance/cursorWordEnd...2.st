default-mode
cursorWordEnd: aKeyboardEvent
	editor selectAt: (self cursorWordEndIndex: aKeyboardEvent).
	^ self normalMode