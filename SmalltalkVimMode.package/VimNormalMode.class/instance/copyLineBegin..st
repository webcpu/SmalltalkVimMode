copy-mode
copyLineBegin: aKeyboardEvent  
 | begin end |
 begin := self lastEndOfLineIndex: self pointIndex.
 end := editor pointIndex.
 editor selectFrom: begin to: end.
 editor copySelection.
 editor selectAt: begin.
	^ self normalMode