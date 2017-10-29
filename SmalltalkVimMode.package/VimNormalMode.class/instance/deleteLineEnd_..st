delete-mode
deleteLineEnd_: aKeyboardEvent
	| start end |
	start := editor pointIndex.
	self cursorLineEnd: aKeyboardEvent.
	end := editor pointIndex > start
		ifTrue: [ editor pointIndex - 1 ]
		ifFalse: [ editor pointIndex ].
	editor selectFrom: start to: end.
	editor cut