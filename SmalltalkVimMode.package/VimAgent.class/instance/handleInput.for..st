accessing
handleInput: aKeyboardEvent for: editor
	| handled |
  mode    := self getMode: aKeyboardEvent.
  handled := (mode isKindOf: VimInsertMode) not.
		mode := mode handleInput: aKeyboardEvent for: editor.
	 ^ handled