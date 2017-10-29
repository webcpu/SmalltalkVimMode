delete-mode
deleteLine: aKeyboardEvent
 "dd"
 |start end position |. 
			position := editor pointIndex.
			editor cursorHome: aKeyboardEvent.
			start := editor pointIndex.
			editor cursorEnd: aKeyboardEvent.
			end := editor pointIndex.
			editor selectFrom: start to: end.
			editor cut.  
    (start = end) & (end > (editor string size))
     ifTrue: [ editor backspace: aKeyboardEvent. editor clipboardTextPut: String cr. ^ self normalMode ].
 			start = end 
     ifTrue:  [ editor clipboardTextPut: '' ]
     ifFalse: [ editor clipboardTextPut: (String cr , editor clipboardText) ].
	^ self normalMode