event
handleInput: aKeyboardEvent for: anEditor
	| key action newMode newKeymap performAction |
	editor := anEditor. 
	key := aKeyboardEvent keyCharacter.
	 
	(keymap isKindOf: VimNormalDefaultModeKeymap) & (aKeyboardEvent keyCharacter isDigit)
  ifTrue: [ (key = $0 & times = '') ifFalse: [times := (times , key asString). ^ self] ]. 

	newKeymap := (self updateKeymap: aKeyboardEvent).
		
	(keymap isKindOf: VimNormalDefaultModeKeymap) & ((newKeymap isKindOf: VimNormalDefaultModeKeymap) not)
	 ifTrue: [  
   Transcript << newKeymap asString; cr.
		 keymap := newKeymap. ^ self ].
	keymap := newKeymap.
	
	action := (keymap keymap) at: key ifAbsent: [ #noop: ].
"	Transcript << key asciiValue; cr."
	
	action == #noop:
		ifTrue: [ keys := ''. ].
	performAction := [  
	newMode := (action asString endsWithAColon)
		ifTrue: [ self perform: action with: aKeyboardEvent ]
		ifFalse: [ self perform: action] . ].
	times = '' ifTrue: [ times := '1'. performAction value. ^ newMode].
	(1 to: (times asInteger )) do: [:x | performAction value].
 ^ newMode 