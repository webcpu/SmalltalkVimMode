keymap
keymap: aKeyboardEvent
 | assocs cmdMap |
	cmdMap := Dictionary new.
	assocs := {
	  ($d -> VimNormalDeleteModeKeymap new).
	  ($r -> VimNormalReplaceCharacterKeymap new).
	  ($R -> VimNormalReplaceStringModeKeymap new). 
	 	 }.
	assocs do: [ :assoc |
		   cmdMap at: assoc key put: assoc value ].
 ^ cmdMap at: aKeyboardEvent keyCharacter ifAbsent: [^ VimNormalDefaultModeKeymap new]