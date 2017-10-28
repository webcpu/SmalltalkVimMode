default-mode
indexOfEndOfCurrentLine
	| pointIndex index |
	pointIndex := editor pointIndex.
	index := pointIndex = (editor string size + 1)
		ifTrue:  [ pointIndex ]
		ifFalse: [ self indexOfEndOfCurrentLine_ ].
	^ index