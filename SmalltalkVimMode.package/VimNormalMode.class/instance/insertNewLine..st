commands
insertNewLine: aKeyboardEvent
 "O"
 |start|.
 aKeyboardEvent shiftPressed
	 ifTrue: [
		editor cursorHome: aKeyboardEvent.
	 start := editor pointIndex.
	 editor insertAndSelect: String cr at: start.
	 editor cursorUp: aKeyboardEvent.
	 editor selectFrom: start to: start .
	 editor replaceSelectionWith: ''.
	 ^ self insertMode]
  ifFalse: [ ^ self normalMode ]