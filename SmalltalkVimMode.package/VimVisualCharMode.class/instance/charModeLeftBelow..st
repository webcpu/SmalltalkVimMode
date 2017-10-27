commands
charModeLeftBelow: aKeyboardEvent
 "h"
 | begin end |
 Transcript << 'charModeLeftBelow:'; cr. 
 Transcript show: 'indice: ', markIndex asString, ', ', markStartIndex asString, ', ' , markStopIndex asString; cr.  
 editor stopIndex = 1   
  ifTrue: [ ^ self ] .  

 (editor startIndex) ~= (editor stopIndex) 
 ifTrue: [ begin := markIndex. end := (editor stopIndex) - 2 ]
 ifFalse: [ begin := (editor startIndex) - 1. end := (editor stopIndex) - 1 ].

	editor selectFrom: begin to: end. 
	markStartIndex := begin.
	markStopIndex := end.
 Transcript show: 'indice: ', markIndex asString, ', ', markStartIndex asString, ', ' , markStopIndex asString; cr. 
	^ self 