default-mode
appendNewLine: aKeyboardEvent
 "o"
	editor cursorEnd: aKeyboardEvent.
	editor insertAndSelect: String cr at: editor pointIndex.
	editor cursorRight: aKeyboardEvent.
	^ self insertMode