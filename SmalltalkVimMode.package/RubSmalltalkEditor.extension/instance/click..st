*SmalltalkVimMode
click: anEvent 	
	self selectorChooserClose.
	((vim isNil not) and: [ vim isNormalMode not ])
	 ifTrue: [ vim mode: VimAbstractMode normalMode ].
	^ super click: anEvent 
