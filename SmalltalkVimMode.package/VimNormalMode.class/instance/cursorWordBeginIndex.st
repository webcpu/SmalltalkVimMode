default-mode
cursorWordBeginIndex
	| str index |
	str := editor string.
	index := editor pointIndex.
	[ index <= str size and: [ (str at: index) isAlphaNumeric ] ]
		whileTrue: [ index := index + 1 ].
	[ index <= str size and: [ (str at: index) isAlphaNumeric not ] ]
		whileTrue: [ index := index + 1 ].
	^ index