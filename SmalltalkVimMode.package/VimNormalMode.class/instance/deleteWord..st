commands
deleteWord: aKeyboardEvent
	| start end |
	start := editor pointIndex.
 self cursorWordBegin: aKeyboardEvent.
	end := (editor pointIndex) > start 
	 ifTrue: [ (editor pointIndex) - 1 ]
	 ifFalse: [ editor pointIndex ].
	editor selectFrom: start to: end.
	editor cut.
	^ self normalMode