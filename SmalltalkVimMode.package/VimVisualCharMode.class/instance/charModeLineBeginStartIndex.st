commands
charModeLineBeginStartIndex
	| index str |
	str   := editor string.
 index := str lastIndexOf: (Character cr) startingAt: (editor startIndex) ifAbsent: 1.
	^ index = 1 ifTrue: [ index ] ifFalse: [ index + 1 ]