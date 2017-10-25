commands
insertAtEndOfLine: aKeyboardEvent 
	self cursorLineEnd: aKeyboardEvent.
	^ self insertMode