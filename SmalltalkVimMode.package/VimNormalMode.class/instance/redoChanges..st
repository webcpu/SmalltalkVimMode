commands
redoChanges: aKeyboardEvent	
 aKeyboardEvent controlKeyPressed
	 ifTrue: [ editor redo ].
 ^ self normalMode.