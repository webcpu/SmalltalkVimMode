find-mode
findNextIndexOfCharacter: aKeyboardEvent
	| c pointIndex begin | 
 pointIndex := editor pointIndex. 

 pointIndex = (editor string size + 1)
  ifTrue: [ ^ pointIndex ].
 
 c := aKeyboardEvent keyCharacter.
 begin := (editor string at: pointIndex) = c | (pointIndex < ((editor string size) + 1))
  ifTrue: [ pointIndex + 1 ]
  ifFalse: [ pointIndex ].
 ^ editor string indexOf: c startingAt: begin ifAbsent: pointIndex. 