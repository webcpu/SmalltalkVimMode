default-mode
cursorLineBeginNoneEmptyInBlankLine: aKeyboardEvent
 | line index str | 
 str   := editor string.
 index := str lineNumberCorrespondingToIndex: editor pointIndex.
 line  := str lines at: index.
 self cursorLineBegin: aKeyboardEvent.
 editor selectAt: (editor pointIndex + (line size)).	
	^ self normalMode