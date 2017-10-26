find-mode
findBeforeCharacter: aKeyboardEvent 
 | index |
	index := self findIndexOfBeforeCharacter: aKeyboardEvent.
 index = editor pointIndex
  ifFalse: [ editor selectAt: index ].
 ^ self normalMode