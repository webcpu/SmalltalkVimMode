commands
cursorBackwardWordBegin: aKeyboardEvent
	| str index |
 str   := editor string.
	index := editor pointIndex.
	
	index = ((str size) + 1) & index = 1
	 ifTrue: [ ^ self normalMode ].
	
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
	 ifTrue: [editor selectAt: index. ^ self normalMode].
						
	[ index > 1 
		 ifTrue: [(str at: index) isAlphaNumeric]
		 ifFalse: [false]]
			whileTrue: [index := index - 1].
			
	editor selectAt: index + 1.
	^ self normalMode