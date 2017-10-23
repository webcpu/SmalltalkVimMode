commands
cursorWordEnd: aKeyboardEvent
	| string index initialIsAlphaNumeric |
	index := editor pointIndex.
	string := editor string.
	index = ((string size) + 1)
	 ifTrue: [ ^ self normalMode ].
	initialIsAlphaNumeric := (string at: index) isAlphaNumeric.
	initialIsAlphaNumeric
		ifTrue: [ [ index <= string size and: [ (string at: index) isAlphaNumeric ] ] whileTrue: [ index := index + 1 ].
			editor selectAt: index. ^ self normalMode ].
	[ index <= string size and: [ (string at: index) isAlphaNumeric not ] ] whileTrue: [ index := index + 1 ].
	[ index <= string size and: [ (string at: index) isAlphaNumeric ] ] whileTrue: [ index := index + 1 ].
	editor selectAt: index.
	^ self normalMode