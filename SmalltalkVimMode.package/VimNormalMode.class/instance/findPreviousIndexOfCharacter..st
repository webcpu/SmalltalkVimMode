find-mode
findPreviousIndexOfCharacter: aKeyboardEvent
	| c pointIndex begin | 
 pointIndex := editor pointIndex. 

 pointIndex = 1
  ifTrue: [ ^ pointIndex ].

 c := aKeyboardEvent keyCharacter.
 begin := (pointIndex = ((editor string size) + 1) or: [ (editor string at: pointIndex) = c ])
  ifTrue: [ pointIndex - 1 ]
  ifFalse: [ pointIndex ].
 ^ editor string lastIndexOf: c startingAt: begin ifAbsent: pointIndex.