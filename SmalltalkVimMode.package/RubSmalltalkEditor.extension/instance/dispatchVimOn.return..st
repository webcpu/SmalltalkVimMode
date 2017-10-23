*SmalltalkVimMode
dispatchVimOn: aKeyboardEvent return: aBlock
	| actions action selector key|
	vimNormalModeKeys ifNil: [ vimNormalModeKeys := '' ].
	Transcript show: (aKeyboardEvent keyValue asString) ; cr.
	Transcript show: vimMajorMode asString , ' ', aKeyboardEvent asString, ' keys: [', vimNormalModeKeys , ']'; cr.
	vimMajorMode ifNil: [ vimMajorMode := 0. vimMinorMode := '' ].	"Normal Mode"
	
	
	
	"vimNormalModeKeymappings ifNil: [vimNormalModeKeymappings := self makeVimNormalModeKeymappings]."
	vimNormalModeKeymappings := self makeVimNormalModeKeymappings.
	key := Character value: (aKeyboardEvent keyValue).
	
	(((vimNormalModeKeymapping = nil) | (vimNormalModeKeymapping = self normalDefaultModeKeymapping) ) & vimMajorMode = 0) 
	 ifTrue: [ selector := (vimNormalModeKeymappings at: key ifAbsent: [#normalDefaultModeKeymapping ]).
		vimNormalModeKeymapping := self perform: selector.
		"vimNormalModeKeys := ''."
		selector = #normalDefaultModeKeymapping
		ifFalse: [^ true ]].

	vimMajorMode = 0 
	 ifTrue: [actions := vimNormalModeKeymapping]. 
	vimMajorMode = 1
	 ifTrue: [actions := self vimInsertModeKeymapping].
	vimMajorMode = 2
	 ifTrue: [actions := self vimVisualCharModeKeymapping].
	vimMajorMode = 3
	 ifTrue: [actions := self vimVisualLineModeKeymapping].

	action := actions at: key ifAbsent: [ #noop: ].
	Transcript show: action; cr.
	action == #noop: ifTrue: [ 
		vimNormalModeKeys := ''. 
		vimMajorMode = 1 ifTrue: [^ false] ifFalse: [^ true]].
	action asString endsWithAColon
	 ifTrue: [self perform: action with: aKeyboardEvent]
	 ifFalse: [ self perform: action ].
	^ true