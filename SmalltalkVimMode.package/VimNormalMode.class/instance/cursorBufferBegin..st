goto-mode
cursorBufferBegin: aKeyboardEvent
	"gg"

	editor selectAt: 1. 
	^ self normalMode.
