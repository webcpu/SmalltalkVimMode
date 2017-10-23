commands
appendNewLine: aKeyboardEvent
 "o"
 | end |.
	editor cursorEnd: aKeyboardEvent.
	end := editor pointIndex.
	editor insertAndSelect: String cr at: end.
	editor selectFrom: end + 1 to: end + 1.
	editor cursorRight: aKeyboardEvent.
	^ self insertMode