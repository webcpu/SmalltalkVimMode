as yet unclassified
handleInput: aKeyboardEvent for: anEditor
	| key action newMode newKeymap |
	editor := anEditor. 
	key := Character value: aKeyboardEvent keyValue.
	newKeymap := (self updateKeymap: aKeyboardEvent).
	
	(keymap isKindOf: VimNormalDefaultModeKeymap) & ((newKeymap isKindOf: VimNormalDefaultModeKeymap) not)
	 ifTrue: [  
   Transcript << newKeymap asString; cr.
		 keymap := newKeymap. ^ self ].
	keymap := newKeymap.
	
	action := (keymap keymap) at: key ifAbsent: [ #noop: ].
	"Transcript << action; cr."
	
	action == #noop:
		ifTrue: [ keys := ''. ].
	newMode := action asString endsWithAColon
		ifTrue: [ self perform: action with: aKeyboardEvent ]
		ifFalse: [ self perform: action]. 
 ^ newMode