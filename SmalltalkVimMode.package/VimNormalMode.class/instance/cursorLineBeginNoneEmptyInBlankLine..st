default-mode
cursorLineBeginNoneEmptyInBlankLine: aKeyboardEvent
 | line index |
 index := editor string lineNumberCorrespondingToIndex: editor pointIndex.
 line := editor string lines at: index.
 self cursorLineBegin: aKeyboardEvent.
 editor selectAt: (editor pointIndex + (line size)).	
	^ self normalMode