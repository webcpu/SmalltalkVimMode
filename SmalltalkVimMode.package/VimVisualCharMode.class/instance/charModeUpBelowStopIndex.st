commands
charModeUpBelowStopIndex	 
	| length currentEndOfLineIndex index distance nextEndOfLineIndex currentLineIndex nextLineIndex line offset |
	
	currentLineIndex := editor string lineNumberCorrespondingToIndex: editor stopIndex.
	currentLineIndex = 1
	 ifTrue: [ ^ editor stopIndex ].
	
	nextLineIndex := currentLineIndex - 1.
	
	line := editor string lineNumber: nextLineIndex. 
 distance := self lengthBetweenLastCrAndStopIndex.
	offset := line size min: distance. 
	length := [ (((editor string lines) first: nextLineIndex - 1) collect: [ :x | 1 + x size ]) sum ].
 index := 	(nextLineIndex > 1) ifTrue: [ length value + offset] ifFalse: [ offset ]. 
	^ index.
	"
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
	^ end"