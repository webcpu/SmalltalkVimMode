delete-mode
deleteBufferBegin: aKeyboardEvent
	keys = ''
		ifTrue: [ keys := 'g'. ^ self ].
	
	keys = 'g'
		ifTrue: [ self deleteBufferBegin_: aKeyboardEvent ].
	^ self normalMode