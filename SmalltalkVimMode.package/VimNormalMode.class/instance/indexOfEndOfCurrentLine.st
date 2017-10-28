default-mode
indexOfEndOfCurrentLine
	| pointIndex index |
	pointIndex := editor pointIndex.
	index := pointIndex = (self editor size + 1)
		ifTrue:  [ pointIndex ]
		ifFalse: [ self indexOfEndOfCurrentLine_ ].
	^ index