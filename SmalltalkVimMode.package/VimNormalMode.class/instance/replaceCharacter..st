replace-character-mode
replaceCharacter: aKeyboardEvent
 "r"
 | str position |.
 position := editor pointIndex.
 str := (Character value: (aKeyboardEvent keyValue)) asString.
	editor selectFrom: position to: position. 
	editor replaceSelectionWith: str.
	editor selectAt: position.
	^ self normalMode