abstract
keymap
	| cmdMap assocs |
	cmdMap := Dictionary new.
		0 to: 255 do: [ :i |
		   cmdMap at: (Character value: i) put: #findPreviousCharacter: ].
	assocs := {
	}.
	assocs do: [ :x | cmdMap at: x key put: x value ].
	^ cmdMap