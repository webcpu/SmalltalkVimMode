commands
enableVisualLineMode: aKeyboarEvent
 | mode index |
 mode := self class visualLineMode: editor.
 self selectWholeLine.
 ^ mode