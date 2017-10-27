commands
charModeUpAboveStartIndex
	| length currentEndOfLineIndex index distance nextEndOfLineIndex currentLineIndex previousLineIndex line offset |
	
	currentLineIndex := editor string lineNumberCorrespondingToIndex: editor startIndex.
	currentLineIndex = 1 
	 ifTrue: [ ^ editor startIndex ].
	
	previousLineIndex := currentLineIndex - 1.
	
	line := editor string lineNumber: previousLineIndex. 
 distance := self lengthBetweenLastCrAndStopIndex.
	offset := line size min: distance.
	offset := offset + 1. 
	length := [ (((editor string lines) first: (previousLineIndex - 1)) collect: [ :x | 1 + x size ]) sum ].
 index := 	(previousLineIndex > 1) ifTrue: [ length value + offset ] ifFalse: [ offset ].
	^ index.
	  "
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
	^ index"