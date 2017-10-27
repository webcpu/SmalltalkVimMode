commands
charModeLeft: aKeyboardEvent
 "h" 
 self isAbove 
  ifTrue: [ ^ self charModeLeftAbove: aKeyboardEvent ]
  ifFalse: [ ^ self charModeLeftBelow: aKeyboardEvent ].