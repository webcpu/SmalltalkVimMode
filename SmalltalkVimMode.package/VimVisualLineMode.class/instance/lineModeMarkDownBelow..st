vim-visual-line-mode
lineModeMarkDownBelow: aKeyboardEvent
 "j"
 | begin end index| 
 Transcript show: 'lineModeMarkDownBelow: ' ,(editor startIndex asString) , ':', (editor stopIndex asString); cr.
 begin := editor startIndex.
 editor stopIndex = (editor string size + 1) 
  ifTrue: [ ^ self ]. 

 end := self indexOfLineEnd: (editor stopIndex + 1).
	editor selectFrom: begin to: end - 1.
	^ self