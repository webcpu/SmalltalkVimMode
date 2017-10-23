commands
deleteLineBegin: aKeyboardEvent
	| start end |
	end := editor pointIndex.
	editor cursorLineBegin: aKeyboardEvent.
	start := editor pointIndex.
	start = end
		ifTrue: [  ]
		ifFalse: [ 
			editor selectFrom: start to: end - 1.
			editor cut ].
	keys := ''.
	^ self normalMode