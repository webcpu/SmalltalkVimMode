accessing
comment: aKeyboardEvent
	| savedClipboardText |
	editor selection size = 0
		ifTrue: [ self selectWholeLine ].
	editor selection size = 0
		ifTrue: [ ^ self normalMode ].
	savedClipboardText := editor clipboardText.
	self comment_.
	editor clipboardTextPut: savedClipboardText.
	^ self normalMode