commands
charModeDownAboveStartIndex 
	| length currentEndOfLineIndex index distance nextEndOfLineIndex currentLineIndex previousLineIndex line offset |
	
	currentLineIndex := editor string lineNumberCorrespondingToIndex: editor startIndex.
	currentLineIndex = editor string lines size 
	 ifTrue: [ ^ editor startIndex ].
	
	previousLineIndex := currentLineIndex + 1.
	
	line := editor string lineNumber: previousLineIndex. 
 distance := self lengthBetweenLastCrAndStopIndex.
	offset := line size min: distance.
	offset := offset + 1. 
	length := [ ((((editor string lines) first: currentLineIndex )) collect: [ :x | 1 + x size] ) sum ].
 index := 	length value + offset.
	^ index.
"
	| len currentEndOfLineIndex end distance nextEndOfLineIndex |
	currentEndOfLineIndex := self endOfLineIndex: editor stopIndex.
	currentEndOfLineIndex ~= (editor string size + 1)
		ifTrue:
			[ nextEndOfLineIndex := self endOfLineIndex: currentEndOfLineIndex + 1 ]
		ifFalse: [ nextEndOfLineIndex := currentEndOfLineIndex ].
	currentEndOfLineIndex = nextEndOfLineIndex
		ifTrue: [ end := editor stopIndex - 1 ]
		ifFalse: [ distance := self lengthBetweenLastCrAndStopIndex.
			len := distance min: nextEndOfLineIndex - currentEndOfLineIndex.
			end := currentEndOfLineIndex + len ].
	^ end "