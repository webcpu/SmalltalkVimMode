commands
charModeUpAbove: aKeyboardEvent
	| start end |
	Transcript << 'charModeUpAbove:'; cr.
 Transcript show: 'indice: ', markIndex asString, ', ', markStartIndex asString, ', ' , markStopIndex asString; cr. 
	start := self charModeUpAboveStartIndex. 
	end   := markIndex + 1.
	editor selectFrom: start to: end.
	^ self