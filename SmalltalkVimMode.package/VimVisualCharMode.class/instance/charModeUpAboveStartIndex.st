commands
charModeUpAboveStartIndex
	| len currentEndOfLineIndex index distance nextEndOfLineIndex |
	currentEndOfLineIndex := self lastEndOfLineIndex: editor startIndex. 

	currentEndOfLineIndex ~= 0
		ifTrue:
			[ nextEndOfLineIndex := self lastEndOfLineIndex: currentEndOfLineIndex - 1 ]
		ifFalse: [ nextEndOfLineIndex := currentEndOfLineIndex ].
		
	currentEndOfLineIndex = nextEndOfLineIndex
		ifTrue: [ index := editor startIndex ]
		ifFalse: [ distance := self lengthBetweenLastCrAndStartIndex.
			len := distance min: currentEndOfLineIndex - nextEndOfLineIndex.
			index := nextEndOfLineIndex + len ]. 

		Transcript show: 'charModeUpAbove: ' , currentEndOfLineIndex asString , ':', nextEndOfLineIndex asString, ':', distance asString, ':', len asString; cr.
	^ index