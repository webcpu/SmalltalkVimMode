event
handleInput: aKeyboardEvent for: anEditor
	| key action newMode |
	editor := anEditor. 
	key := Character value: aKeyboardEvent keyValue.
	action := (keymap keymap) at: key ifAbsent: [ #noop: ].
	Transcript
		show: action;
		cr.
	action == #noop:
		ifTrue: [ keys := ''. ].
	newMode := action asString endsWithAColon
		ifTrue: [ self perform: action with: aKeyboardEvent ]
		ifFalse: [ self perform: action ].
	^ newMode