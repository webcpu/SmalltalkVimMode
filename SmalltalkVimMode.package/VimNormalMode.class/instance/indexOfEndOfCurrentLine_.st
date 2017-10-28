default-mode
indexOfEndOfCurrentLine_
	| count lines sizes lineSize |
	count    := editor string lineNumberCorrespondingToIndex: editor pointIndex. 
 lines    := editor string lines first: count.
 lineSize := [ :xs | xs size + 1 ].
 sizes    := lines collect: lineSize.
	^ sizes sum