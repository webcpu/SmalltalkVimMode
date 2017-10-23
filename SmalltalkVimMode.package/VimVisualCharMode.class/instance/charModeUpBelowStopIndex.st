commands
charModeUpBelowStopIndex	
	| len currentEndOfLineIndex end distance nextEndOfLineIndex |
	currentEndOfLineIndex := self lastEndOfLineIndex: editor stopIndex.
	currentEndOfLineIndex ~= 0
		ifTrue:  [ nextEndOfLineIndex := self lastEndOfLineIndex: currentEndOfLineIndex - 1 ]
		ifFalse: [ nextEndOfLineIndex := currentEndOfLineIndex ].
		
	currentEndOfLineIndex = nextEndOfLineIndex
		ifTrue: [ end := editor stopIndex - 1 ]
		ifFalse: [ distance := self lengthBetweenLastCrAndStopIndex.
			len := distance min: currentEndOfLineIndex - nextEndOfLineIndex - 1.
			end := nextEndOfLineIndex + len ].
	^ end