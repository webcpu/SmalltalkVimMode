commands
charModeLineBeginStopIndex
	| index |
 index := self lastEndOfLineIndex: editor pointIndex.
	^ index