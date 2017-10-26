default-mode
insertAfterCursor: aKeyboardEvent
 "select all. cmd + a"
 Transcript << (aKeyboardEvent commandKeyPressed asString); cr.
 aKeyboardEvent commandKeyPressed & aKeyboardEvent shiftPressed not & aKeyboardEvent controlKeyPressed not & aKeyboardEvent altKeyPressed not
  ifTrue: [ editor selectFrom: 1 to: (editor string size + 1). ^ self normalMode ]. 

 "insert"
 editor cursorRight: aKeyboardEvent.
	^ self insertMode