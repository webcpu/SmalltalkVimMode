commands
tryVisualBlockMode: aKeyboardEvent
 Transcript show: (aKeyboardEvent keyValue asString) ; cr.
	aKeyboardEvent controlKeyPressed 
	 ifTrue: [self normalMode ].
	^ self normalMode 