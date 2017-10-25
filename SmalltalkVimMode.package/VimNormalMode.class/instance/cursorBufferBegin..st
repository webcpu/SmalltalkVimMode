default-mode
cursorBufferBegin: aKeyboardEvent
	"gg"

	keys = 'g'
		ifTrue: [ editor selectAt: 1. ^ self normalMode ].
	
	keys = ''
		ifTrue: [ keys := 'g'. ^ self ].
		
	^ self normalMode