commands
cursorWORDBegin: aKeyboardEvent
	| str index |
	str   := editor string.
	index := editor pointIndex.
	
 	[(index <= (str size)) and: [(str at: index) isSeparator not]] 
			whileTrue: [index := index + 1].
			
	[(index <= (str size)) and: [(str at: index) isSeparator]]
			whileTrue: [index := index + 1].
	editor selectAt: index.
 ^ self normalMode