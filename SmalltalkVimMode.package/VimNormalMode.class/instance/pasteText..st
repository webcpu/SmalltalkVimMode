commands
pasteText: aKeyboardEvent
	| text |
	text := editor clipboardText.
	text isEmpty
		ifTrue: [ ^ self normalMode ].
	text = String cr
	 ifTrue: [ self cursorLineEnd: aKeyboardEvent. editor paste . ^ self normalMode ].
	text first = Character cr
		ifTrue: [ self cursorLineEnd: aKeyboardEvent.
			editor cursorRight: aKeyboardEvent.
			editor replace: editor selectionInterval with: editor clipboardText allButFirst and: [ editor selectAt: editor pointIndex ].
			editor cursorUp: aKeyboardEvent ]
		ifFalse: [ editor paste ].
	^ self normalMode.