commands
charModeUp: aKeyboardEvent
 "k"
 Transcript show: 'mark: ', markIndex asString, ', length = ', editor selection size asString; cr. 
 ((editor string lineNumberCorrespondingToIndex: markIndex ) >= (editor string lineNumberCorrespondingToIndex: editor stopIndex))
  ifTrue: [ self charModeUpAbove: aKeyboardEvent ] 
  ifFalse: [ self charModeUpBelow: aKeyboardEvent ].
	^ self