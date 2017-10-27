commands
charModeRightBelow: aKeyboardEvent
 "l"
 | begin end | 
 Transcript << 'charModeRightBelow:'; cr. 
 Transcript show: 'indice: ', markIndex asString, ', ', markStartIndex asString, ', ' , markStopIndex asString; cr.
 begin := markIndex.
	end := markIndex + (editor selection size).
	editor selectFrom: begin to: end.
	markStartIndex := begin.
	markStopIndex := end. 
 Transcript show: 'indice: ', markIndex asString, ', ', markStartIndex asString, ', ' , markStopIndex asString; cr.
	^ self