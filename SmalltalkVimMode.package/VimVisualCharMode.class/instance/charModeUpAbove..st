commands
charModeUpAbove: aKeyboardEvent
	| start end |
	start := self charModeUpAboveStartIndex. 
	end   := markIndex.
	editor selectFrom: start to: end.
	^ self