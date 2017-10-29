default-mode
cursorWORDEndIndex: aKeyboardEvent 
	| string index initialIsAlphaNumeric |
	index := editor pointIndex.
	string := editor string.
	index = ((string size) + 1)
	 ifTrue: [ ^ index ].
	initialIsAlphaNumeric := (string at: index) isSeparator not.
	initialIsAlphaNumeric
		ifTrue: [[ index <= string size and: [ (string at: index) isSeparator not]] whileTrue: [ index := index + 1 ].
			editor selectAt: index. ^ self normalMode].
	[ index <= string size and: [ (string at: index) isSeparator ] ] whileTrue: [ index := index + 1 ].
	[ index <= string size and: [ (string at: index) isSeparator not] ] whileTrue: [ index := index + 1 ].
 ^ index.
