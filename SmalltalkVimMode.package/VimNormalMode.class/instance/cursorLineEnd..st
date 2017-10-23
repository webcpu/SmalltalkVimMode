commands
cursorLineEnd: aKeyboardEvent
	"$"
	editor cursorEnd: aKeyboardEvent.
	editor selectAt: editor stopIndex.
	^ self