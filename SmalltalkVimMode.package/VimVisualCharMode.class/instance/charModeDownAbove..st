commands
charModeDownAbove: aKeyboardEvent
 "j"
	| start end |
	start := markIndex.
	end   := self markDownAboveStopIndex.
	editor selectFrom: start to: end.
	^ true