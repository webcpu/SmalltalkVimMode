default-mode
cursorBufferEnd: aKeyboardEvent
	"G"
	| index selectBufferEnd |
	selectBufferEnd := [ index := (editor string size) + 1. editor selectAt: index ].
	aKeyboardEvent shiftPressed ifTrue: selectBufferEnd.
	^ self normalMode