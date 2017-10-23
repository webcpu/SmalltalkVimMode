commands
charModeDownAbove: aKeyboardEvent
 "j"
	| start end |
	start := self charModeDownAboveStartIndex.
	end   := markIndex.
	editor selectFrom: start to: end.
	^ self