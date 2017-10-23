commands
charModeLeft: aKeyboardEvent
 "h"
 | start end from to |
 Transcript show: ('mark: ', markIndex asString, ', length = ', (editor selection size asString)); cr.
 "start := markIndex."
 "markIndex = ((self stopIndex) - 1)
  ifTrue: [self selectAt: markIndex. ^ true]."

 (editor selection isEmpty)
  ifTrue: [start := markIndex - 1. end := markIndex - 1 ]
  ifFalse: [  
	 markIndex > editor startIndex
  ifTrue: [start := (editor startIndex) - 1.
	          end := editor stopIndex].
 markIndex < editor stopIndex
  ifTrue: [start := editor startIndex. end := (editor stopIndex) - 2]].

"markIndex = self pointInd"

 from := start min: end.
 to := start max: end. 
	editor selectFrom: from to: to. 
	markStartIndex := from.
	markStopIndex := to.
 Transcript show: 'from: ', from asString, ',', 'to: ', to asString, ' mark: ', markIndex asString, ', length = ', self selection size asString; cr.
	^ self