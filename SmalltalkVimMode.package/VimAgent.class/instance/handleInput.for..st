as yet unclassified
handleInput: aKeyboardEvent for: editor
		| handled |
	mode isNil | (aKeyboardEvent keyCharacter = Character escape)
   ifTrue: [ mode := VimAbstractMode normalMode ].
  handled := (mode isKindOf: VimInsertMode) not.
  aKeyboardEvent commandKeyPressed 
   ifTrue: [ ^ false ].
		mode := mode handleInput: aKeyboardEvent for: editor.
	 ^ handled