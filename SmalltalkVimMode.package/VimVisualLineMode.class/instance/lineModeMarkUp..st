vim-visual-line-mode
lineModeMarkUp: aKeyboardEvent
 "k"
  Transcript show: 'lineModeMarkUp: ' ,(editor startIndex asString) , ':', (editor stopIndex asString); cr. 
  Transcript show: 'lineModeMarkUp: ' ,(markStartIndex asString) , ':', (markStopIndex asString); cr.
 markStopIndex = editor stopIndex
  ifTrue: [ ^ self lineModeMarkUpAbove: aKeyboardEvent ]. 

 markStartIndex = editor startIndex 
  ifTrue: [ ^ self lineModeMarkUpBelow: aKeyboardEvent ].