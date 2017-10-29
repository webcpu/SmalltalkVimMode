vim-mode
selectWholeLine
 | begin end str | 
 str := editor string.
 begin := self indexOfLastLineEnd: editor pointIndex.
 end := self endOfLineIndex: editor pointIndex.
 begin = 1 | end = 1
  ifTrue: [ editor selectAt: 1. ^ true ] .
 (end - begin) = 1 & end = (editor string size + 1) 
  ifTrue: [ editor selectAt: end. ^ true ].
 begin = 1 
  ifFalse: [ begin := begin + 1].
 end := end - 1.
 editor selectFrom: begin to: end.
 ^ true