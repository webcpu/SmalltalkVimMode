commands
charModeDown: aKeyboardEvent
 "j"
 Transcript show: 'mark: ', markIndex asString, ', length = ', editor selection size asString; cr. 
 (editor stopIndex) >= markIndex  
  ifTrue: [ self charModeDownBelow: aKeyboardEvent ] 
  ifFalse: [ self charModeDownAbove: aKeyboardEvent ].
	^ self