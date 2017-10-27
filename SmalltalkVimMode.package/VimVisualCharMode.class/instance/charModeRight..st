commands
charModeRight: aKeyboardEvent
 "l"
 self isAbove 
  ifTrue: [ ^ self charModeRightAbove: aKeyboardEvent ]
  ifFalse: [ ^ self charModeRightBelow: aKeyboardEvent ].