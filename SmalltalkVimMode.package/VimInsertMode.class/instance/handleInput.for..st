as yet unclassified
handleInput: aKeyboardEvent for: anEditor
 editor := anEditor.
 Transcript show: (aKeyboardEvent keyCharacter asString); cr.
 
 ^ self