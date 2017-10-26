find-mode
findNextCharacter: aKeyboardEvent 
 | index |
	index := self findNextIndexOfCharacter: aKeyboardEvent.
 index = editor pointIndex
  ifFalse: [ editor selectAt: index ].
 ^ self normalMode