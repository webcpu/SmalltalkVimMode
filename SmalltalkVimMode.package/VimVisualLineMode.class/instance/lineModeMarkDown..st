vim-visual-line-mode
lineModeMarkDown: aKeyboardEvent
 "j"
 "Halt now."
 Transcript show: 'lineModeMarkDown: ' ,(editor startIndex asString) , ':', (editor stopIndex asString); cr. 
 Transcript show: 'lineModeMarkDown: ' ,(markStartIndex asString) , ':', (markStopIndex asString); cr.
 markStartIndex = editor startIndex "| (((markStartIndex - 1) = editor startIndex) & markStopIndex = editor stopIndex)"
  ifTrue: [ ^ self lineModeMarkDownBelow: aKeyboardEvent ].

 markStopIndex = editor stopIndex
  ifTrue: [ ^ self lineModeMarkDownAbove: aKeyboardEvent ]