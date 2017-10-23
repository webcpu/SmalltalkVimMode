commands
charModeDownAboveStartIndex
	| len currentEndOfLineIndex end distance nextEndOfLineIndex |
	currentEndOfLineIndex := self endOfLineIndex: self stopIndex.
	currentEndOfLineIndex ~= (self string size + 1)
		ifTrue:
			[ nextEndOfLineIndex := self endOfLineIndex: currentEndOfLineIndex + 1 ]
		ifFalse: [ nextEndOfLineIndex := currentEndOfLineIndex ].
	currentEndOfLineIndex = nextEndOfLineIndex
		ifTrue: [ end := self stopIndex - 1 ]
		ifFalse: [ distance := self lengthBetweenLastCrAndStopIndex.
			len := distance min: nextEndOfLineIndex - currentEndOfLineIndex.
			end := currentEndOfLineIndex + len ].
	^ end