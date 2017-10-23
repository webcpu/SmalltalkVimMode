commands
deleteWord: aKeyboardEvent
	| start end |
	start := editor pointIndex.
	editor cursorWordBegin: aKeyboardEvent.
	end := (editor pointIndex) > start 
	 ifTrue: [ (editor pointIndex) - 1 ]
	 ifFalse: [ editor pointIndex ].
	editor selectFrom: start to: end.
	editor cut.
	^ self normalMode