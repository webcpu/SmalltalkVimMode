commands
enableVisualLineMode: aKeyboarEvent
 | mode index |
 mode := self class visualLineMode: editor.
 index := editor pointIndex.
 editor selectFrom: index to: index.
 ^ mode