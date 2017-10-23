commands
charModeRight: aKeyboardEvent
 "l"
 | end |
Transcript show: 'mark: ', markIndex asString, ', length = ', editor selection size asString; cr.
	end := markIndex + (editor selection size).
	editor selectFrom: markIndex to: end.
	markStartIndex := markIndex.
	markStopIndex := end.
	^ self