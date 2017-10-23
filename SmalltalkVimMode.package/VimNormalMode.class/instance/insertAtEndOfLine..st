commands
insertAtEndOfLine: aKeyboardEvent 
	editor cursorLineEnd: aKeyboardEvent.
	^ self insertMode