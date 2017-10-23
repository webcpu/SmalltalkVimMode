commands
charModeUpBelow: aKeyboardEvent
	| start end |
	start := markIndex.
	end   := self charModeUpBelowStopIndex.
	editor selectFrom: start to: end.
	^ self