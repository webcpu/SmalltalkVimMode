as yet unclassified
handleInput: aKeyboardEvent for: editor
		| handled |
	mode isNil | (aKeyboardEvent keyCharacter = Character escape)
   ifTrue: [ mode := VimAbstractMode normalMode ].
  handled := (mode isKindOf: VimInsertMode) not.
  (aKeyboardEvent controlKeyPressed) & (aKeyboardEvent keyCharacter = Character home)
   ifTrue: [ editor selectAll: aKeyboardEvent. editor copySelection: aKeyboardEvent . ^ true].
		mode := mode handleInput: aKeyboardEvent for: editor.
	 ^ handled