*SmalltalkVimMode
keystroke: aKeyboardEvent
 ((vim isNil not) and: [vim isInsertMode])
  ifTrue:  [ self keystrokeCompletionAround: aKeyboardEvent ]
	 ifFalse: [ super keystroke: aKeyboardEvent ]