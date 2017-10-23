commands
cursorBufferEnd: aKeyboardEvent
	"G"
	aKeyboardEvent shiftPressed
		ifTrue: [ editor selectAt: (editor string size) + 1 ].
	^ self normalMode