commands
charModeUpBelow: aKeyboardEvent
	| start end |
	Transcript << 'charModeUpBelow:'; cr.
 Transcript show: 'indice: ', markIndex asString, ', ', markStartIndex asString, ', ' , markStopIndex asString; cr. 
	start := markIndex.
	end   := self charModeUpBelowStopIndex.
	editor selectFrom: start to: end.
	^ self