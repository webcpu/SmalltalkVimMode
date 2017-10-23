commands
tryVisualLineMode: aKeyboardEvent
 Transcript show: (aKeyboardEvent keyValue asString) ; cr.
	aKeyboardEvent shiftKeyPressed 
	 ifTrue: [self visualLineMode ].
	^ self normalMode 