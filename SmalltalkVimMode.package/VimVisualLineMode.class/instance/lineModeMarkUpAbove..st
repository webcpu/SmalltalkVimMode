vim-visual-line-mode
lineModeMarkUpAbove: aKeyboardEvent
 "k" 
 | begin end |
 Transcript show: 'mark: ', markIndex asString, ', length = ', editor selection size asString; cr. 

 end := editor stopIndex.
 editor startIndex = 1 
  ifTrue: [ ^ self ]. 

 begin := self endOfLineIndex: (editor startIndex).
	editor selectFrom: begin + 1 to: end.
	^ self