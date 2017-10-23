commands
charModeUp: aKeyboardEvent
 "k"
 Transcript show: 'mark: ', markIndex asString, ', length = ', editor selection size asString; cr. 
 self isAbove 
  ifTrue: [ self charModeUpAbove: aKeyboardEvent ] 
  ifFalse: [ self charModeUpBelow: aKeyboardEvent ].
	^ self