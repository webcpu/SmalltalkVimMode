keymap
updateKeymap: aKeyboardEvent
 | assocs cmdMap |
 (keymap isKindOf: VimNormalDefaultModeKeymap) ifFalse: [^ keymap].

	cmdMap := Dictionary new.
	assocs := {
	  ($d -> VimNormalDeleteModeKeymap new).
	  ($r -> VimNormalReplaceCharacterKeymap new).
	  ($R -> VimNormalReplaceStringModeKeymap new). 
 	  ($y -> VimNormalCopyModeKeymap new).
		 ($g -> VimNormalGotoModeKeymap new). 
		 ($f -> VimNormalFindNextModeKeymap new).
		 ($t -> VimNormalFindBeforeModeKeymap new).
	 	 }.
	assocs do: [ :assoc |
		   cmdMap at: assoc key put: assoc value ].
 ^ cmdMap at: aKeyboardEvent keyCharacter ifAbsent: [^ VimNormalDefaultModeKeymap new ].