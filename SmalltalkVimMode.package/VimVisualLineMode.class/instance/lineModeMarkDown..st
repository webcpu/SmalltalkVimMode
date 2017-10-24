vim-visual-line-mode
lineModeMarkDown: aKeyboardEvent
 "j"
 | begin end index|
 Transcript show: 'mark: ', markIndex asString, ', length = ', editor selection size asString; cr. 
 editor startIndex = markStartIndex 
  ifTrue: [ begin := markStartIndex. index := editor stopIndex - 1 ].

 editor stopIndex = markStopIndex
  ifTrue: [ end := markStopIndex - 1. index := editor startIndex ].

 editor selectAt: index.
 editor cursorDown: aKeyboardEvent.
 editor selectWholeLine.

 editor startIndex >= markStopIndex
  ifTrue: [ end := editor stopIndex - 1 ].

 editor stopIndex <= markStartIndex
  ifTrue: [ begin := editor startIndex ].

 (editor startIndex == markStartIndex) & (editor stopIndex = markStopIndex)
  ifTrue: [ begin := markStartIndex. end := markStopIndex - 1 ].

	editor selectFrom: begin to: end.
	^ self