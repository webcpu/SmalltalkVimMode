commands
charModeLineBegin: aKeyboardEvent
 self isAbove 
  ifTrue: [ self charModeLineBeginAbove: aKeyboardEvent ] 
  ifFalse: [ self charModeLineBeginBelow: aKeyboardEvent ].
	^ self