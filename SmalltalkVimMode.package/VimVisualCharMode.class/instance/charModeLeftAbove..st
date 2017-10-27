commands
charModeLeftAbove: aKeyboardEvent
 "h"
 | begin end |
 Transcript << 'charModeLeftAbove:'; cr.
 Transcript show: 'indice: ', markIndex asString, ', ', markStartIndex asString, ', ' , markStopIndex asString; cr. 
 editor startIndex = 1   
  ifTrue: [ ^ self ] . 
 
 begin := editor startIndex - 1.
 end := markStopIndex.
	editor selectFrom: begin to: end. 
	markStartIndex := begin.
	markStopIndex := end.
	Transcript show: 'indice: ', markIndex asString, ', ', markStartIndex asString, ', ' , markStopIndex asString; cr. 
	^ self