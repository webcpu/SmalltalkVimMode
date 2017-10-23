as yet unclassified
charModeDown: aKeyboardEvent
 "j"
 Transcript show: 'mark: ', markIndex asString, ', length = ', self selection size asString; cr. 
 (self stopIndex) >= markIndex  
  ifTrue: [ self charModeDownBelow: aKeyboardEvent ] 
  ifFalse: [ self charModeDownAbove: aKeyboardEvent ].
	^ true