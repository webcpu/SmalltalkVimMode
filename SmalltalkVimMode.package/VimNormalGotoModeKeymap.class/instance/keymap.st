abstract
keymap
	| cmdMap assocs |
	cmdMap := Dictionary new.
		0 to: 255 do: [ :i |
		   cmdMap at: (Character value: i) put: #noop: ].
	assocs := {
	($g -> #cursorBufferBegin:).
	($_ -> #cursorLineEndNoneEmpty:).
	}.
	assocs do: [ :x | cmdMap at: x key put: x value ].
	^ cmdMap