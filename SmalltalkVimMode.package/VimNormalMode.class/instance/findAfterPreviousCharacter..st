find-mode
findAfterPreviousCharacter: aKeyboardEvent 
 | index |
	index := self findAfterPreviousIndexOfCharacter: aKeyboardEvent.
 index = editor pointIndex
  ifFalse: [ editor selectAt: index ].
 ^ self normalMode