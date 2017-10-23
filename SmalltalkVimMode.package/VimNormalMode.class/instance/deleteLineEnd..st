commands
deleteLineEnd: aKeyboardEvent
	| start end |
	start := editor pointIndex.
	editor cursorLineEnd: aKeyboardEvent.
	end := (editor pointIndex) > start 
	 ifTrue: [ (editor pointIndex) - 1 ]
	 ifFalse: [ editor pointIndex ].
	editor selectFrom: start to: end.
	editor cut.
	^ self normalMode