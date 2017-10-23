copying
copyLine: aKeyboardEvent
 "yy"
 |start end position vimNormalModeKeys |.
	 (vimNormalModeKeys = 'y')
		ifTrue: [ 
			vimNormalModeKeys := ''.
			position := self pointIndex.
			self cursorHome: aKeyboardEvent.
			start := self pointIndex.
			self cursorEnd: aKeyboardEvent.
			end := self pointIndex.
			self selectFrom: start to: end.
					self copySelection. 
			start = end 
     ifTrue: [ self clipboardTextPut: '' ]
     ifFalse: [self clipboardTextPut: (String cr , self clipboardText)].
			Transcript show: (self clipboardText asArray asString); cr.
			self selectAt: position]
		ifFalse: [ 
			vimNormalModeKeys := 'y'].
	
	vimNormalModeKeys = ''
		ifTrue: [ vimNormalModeKeys := 'y'. ^ true ].
	^ false