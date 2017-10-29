commands
charModeDownBelowStopIndex	
	| len currentEndOfLineIndex end distance nextEndOfLineIndex |
	currentEndOfLineIndex := self indexOfLineEnd: editor stopIndex.
	
	currentEndOfLineIndex ~= (editor string size + 1)
		ifTrue:  [ nextEndOfLineIndex := self indexOfLineEnd: (currentEndOfLineIndex + 1) ]
		ifFalse: [ nextEndOfLineIndex := currentEndOfLineIndex ].
		
	currentEndOfLineIndex = nextEndOfLineIndex
		ifTrue: [ end := (editor stopIndex) - 1 ]
		ifFalse: [ distance := self lengthBetweenLastCrAndStopIndex.
			len := distance min: nextEndOfLineIndex - currentEndOfLineIndex - 1.
			end := currentEndOfLineIndex + len].  

	Transcript show: currentEndOfLineIndex asString , ':', nextEndOfLineIndex asString, ':', distance asString, ':', len asString; cr.
	^ end 