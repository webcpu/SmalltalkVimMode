copy-mode
copyLine: aKeyboardEvent
 "yy"
 | start end position text |.
	position := editor pointIndex.
	editor cursorHome: aKeyboardEvent.
	start := editor pointIndex.
	editor cursorEnd: aKeyboardEvent.
	end := editor pointIndex.
	editor selectFrom: start to: end.
	editor copySelection. 
	text := start = end 
   ifTrue: [ '' ]
   ifFalse: [ String cr , editor clipboardText ].
 editor clipboardTextPut: text.
	Transcript << (editor clipboardText asArray asString); cr.
	editor selectAt: position.
	^ self normalMode