copy-mode
copyLineEnd: aKeyboardEvent  
 | begin end |
 begin := editor pointIndex.
 end := self endOfLineIndex: begin.
 begin = end 
  ifTrue: [ editor clipboardTextPut: ''. ^ self normalMode ].

 ((end < (editor string size + 1) & end > 1) and: [ (editor string at: end) = Character cr ])
  ifTrue: [ end := end - 1 ].
 editor selectFrom: begin to: end.
 editor copySelection.
 editor selectAt: begin.
	^ self normalMode