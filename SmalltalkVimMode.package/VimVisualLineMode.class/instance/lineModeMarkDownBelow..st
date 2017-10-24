vim-visual-line-mode
lineModeMarkDownBelow: aKeyboardEvent
 "j"
 | begin end index|
 begin := editor startIndex.
 editor stopIndex = (editor string size + 1) 
  ifTrue: [ ^ self ]. 

 end := self endOfLineIndex: (editor stopIndex + 1).
	editor selectFrom: begin to: end - 1.
	^ self