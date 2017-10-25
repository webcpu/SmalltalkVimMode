copy-mode
copyLine: aKeyboardEvent
 "yy"
 |start end position |.
	position := editor pointIndex.
	editor cursorHome: aKeyboardEvent.
	start := editor pointIndex.
	editor cursorEnd: aKeyboardEvent.
	end := editor pointIndex.
	editor selectFrom: start to: end.
	editor copySelection. 
	start = end 
   ifTrue: [ editor clipboardTextPut: '' ]
   ifFalse: [ editor clipboardTextPut: (String cr , editor clipboardText)].
	Transcript show: (editor clipboardText asArray asString); cr.
	editor selectAt: position.
	^ self normalMode