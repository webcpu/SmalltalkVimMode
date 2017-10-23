commands
charModeWordBeginStopIndex
	| index str |
	str := editor string.
	index := str
		findAnySubstring: self nonAlphanums
		startingAt: self pointIndex.
	index = 0
		ifTrue: [ index := editor pointIndex ].
	Transcript
		show: index asString;
		cr.
	index := str findAnySubstring: self alphanums startingAt: index.
	index = 0
		ifTrue: [ index := editor string size + 1 ]
		ifFalse: [ index := index - 1 ].
	^ index