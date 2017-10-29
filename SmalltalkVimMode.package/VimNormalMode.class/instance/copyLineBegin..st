copy-mode
copyLineBegin: aKeyboardEvent  
 | begin end |
 begin := self indexOfLastLineEnd: self pointIndex.
 end := editor pointIndex.
 editor selectFrom: begin to: end.
 editor copySelection.
 editor selectAt: begin.
	^ self normalMode