as yet unclassified
handleInput: aKeyboardEvent for: anEditor
 editor := anEditor.
 aKeyboardEvent commandKeyPressed & aKeyboardEvent keyCharacter = $a
  ifTrue: [ editor selectAll: aKeyboardEvent ].
 ^ self