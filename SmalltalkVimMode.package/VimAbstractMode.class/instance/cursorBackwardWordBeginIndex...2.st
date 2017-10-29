default-mode
cursorBackwardWordBeginIndex: aKeyboardEvent
	| str index |
 str   := editor string.
	index := editor pointIndex.
	
	index = ((str size) + 1) & index = 1
	 ifTrue: [ ^ index ].
	
	index > str size
	 ifTrue: [ index := str size ].
	
	index > 1 
		 ifTrue: [(str at: index) isAlphaNumeric
			          ifTrue: [index := index - 1]].
	
	[ index > 1 
		 ifTrue: [(str at: index) isAlphaNumeric not]
		 ifFalse: [false]]
			whileTrue: [index := index - 1].
			
	index = 1 
	 ifTrue: [ ^ index ].
						
	[ index > 1 
		 ifTrue: [(str at: index) isAlphaNumeric]
		 ifFalse: [false]]
			whileTrue: [index := index - 1].
	^ index + 1