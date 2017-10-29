default-mode
cursorWordEndIndex: aKeyboardEvent
	| string index initialIsAlphaNumeric |
	index := editor pointIndex.
	string := editor string.
	index = ((string size) + 1)
	 ifTrue: [ ^ index ].
	initialIsAlphaNumeric := (string at: index) isAlphaNumeric.
	initialIsAlphaNumeric
		ifTrue: [ [ index <= string size and: [ (string at: index) isAlphaNumeric ] ] whileTrue: [ index := index + 1 ].
			^ index. ].
	[ index <= string size and: [ (string at: index) isAlphaNumeric not ] ] whileTrue: [ index := index + 1 ].
	[ index <= string size and: [ (string at: index) isAlphaNumeric ] ] whileTrue: [ index := index + 1 ].
 ^ index