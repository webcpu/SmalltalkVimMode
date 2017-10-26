find-mode
findCharacter: aKeyboardEvent 
 | index |
	index := self findIndexOfCharacter: aKeyboardEvent.
 index = editor pointIndex
  ifFalse: [ editor selectAt: index ].
 ^ self normalMode