delete-mode
deleteBufferEnd: aKeyboardEvent
	| start end |
	start := editor string lastIndexOf: (Character cr) startingAt: (editor pointIndex) ifAbsent: [ 1 ].
	end   := (editor string size) + 1.
	editor selectFrom: start to: end.
	editor cut.
	^ self normalMode