copy-mode
copyLine: aKeyboardEvent
 "yy"
 | start end position text lineIndex |.
	position  := editor pointIndex.
	lineIndex := editor string lineNumberCorrespondingToIndex: position.
	text := (lineIndex <= editor string lines size)
	 ifTrue: [ editor string lines at: lineIndex ]
	 ifFalse: [ '' ].
 text := String cr, text.
	
	editor clipboardTextPut: text.

" self selectWholeLine.
 
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
	editor selectAt: position."
	^ self normalMode