commands
charModeRightAbove: aKeyboardEvent
 "l"
 | begin end |
 Transcript << 'charModeRightAbove:'; cr.
 Transcript show: 'indice: ', markIndex asString, ', ', markStartIndex asString, ', ' , markStopIndex asString; cr. 
" mark = (markIndex + 1)
  ifTrue: [ begin := markIndex. end := markIndex + 1 ]
  ifFalse: [ begin := markStartIndex + 1. end := markIndex ]." 
 begin := markStartIndex + 1.
 end := markStopIndex.
	editor selectFrom: begin to: end.
	markStartIndex := begin.
	markStopIndex := end. 
 Transcript show: 'indice: ', markIndex asString, ', ', markStartIndex asString, ', ' , markStopIndex asString; cr. 
	^ self