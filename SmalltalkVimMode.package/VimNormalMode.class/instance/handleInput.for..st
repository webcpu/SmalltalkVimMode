as yet unclassified
handleInput: aKeyboardEvent for: anEditor
	| key action newMode newKeymap |
	editor := anEditor. 
	key := Character value: aKeyboardEvent keyValue.
	newKeymap := (self updateKeymap: aKeyboardEvent).
	
	Transcript show: newKeymap asString; cr.
	(keymap isKindOf: VimNormalDefaultModeKeymap) & ((newKeymap isKindOf: VimNormalDefaultModeKeymap) not)
	 ifTrue: [keymap := newKeymap. ^ self ].
	keymap := newKeymap.
	
	action := (keymap keymap) at: key ifAbsent: [ #noop: ].
	Transcript
		show: action;
		cr.
	action == #noop:
		ifTrue: [ keys := ''. ].
	newMode := action asString endsWithAColon
		ifTrue: [ self perform: action with: aKeyboardEvent ]
		ifFalse: [ self perform: action]. 
 ^ newMode