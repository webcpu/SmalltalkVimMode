commands
charModeDownBelow: aKeyboardEvent
	"j"
	| start end |
	start := markIndex.
	end   := self charModeDownBelowStopIndex.
	editor selectFrom: start to: end.
	^ self