vim-visual-line-mode
lineModeMarkDownAbove: aKeyboardEvent
 "j"
 | begin end |
 Transcript show: 'lineModeMarkDownAbove: ' ,(editor startIndex asString) , ':', (editor stopIndex asString); cr.
 begin := self indexOfLineEnd: (editor startIndex). 
 begin ~= 1 
  ifTrue: [ begin := begin + 1 ]. 
 end := editor stopIndex.
	editor selectFrom: begin to: end - 1.
	^ self