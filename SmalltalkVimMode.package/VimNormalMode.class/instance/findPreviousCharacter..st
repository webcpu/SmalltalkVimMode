find-mode
findPreviousCharacter: aKeyboardEvent 
 | index |
	index := self findPreviousIndexOfCharacter: aKeyboardEvent.
 index = editor pointIndex
  ifFalse: [ editor selectAt: index ].
 ^ self normalMode