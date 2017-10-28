default-mode
cursorLineEnd: aKeyboardEvent
	"$"
	| index |
	index := self indexOfEndOfCurrentLine.
	editor selectAt: index.
	^ self normalMode