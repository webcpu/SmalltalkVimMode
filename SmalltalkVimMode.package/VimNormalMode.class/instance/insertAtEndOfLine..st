default-mode
insertAtEndOfLine: aKeyboardEvent 
	self cursorLineEnd: aKeyboardEvent.
	^ self insertMode