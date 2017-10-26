find-mode
findAfterPreviousIndexOfCharacter: aKeyboardEvent
	| pointIndex index |
	index := self findPreviousIndexOfCharacter: aKeyboardEvent. 
 pointIndex := editor pointIndex. 

 index := index = pointIndex 
  ifTrue: [ index ]
  ifFalse: [ index + 1 ].

 ^ index