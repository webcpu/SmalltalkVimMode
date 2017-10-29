accessing
comment_
	| isComment text newText |
	text := editor selection.
	isComment := [ :xs | xs size >= 2 and: [ xs first = $" & (xs last = $") ] ].
	newText := (isComment value: text)
		ifTrue: [ text allButFirst allButLast ]
		ifFalse: [ '"' , text , '"' ].
	editor clipboardTextPut: newText.
	editor paste.
	editor selectAt: editor pointIndex