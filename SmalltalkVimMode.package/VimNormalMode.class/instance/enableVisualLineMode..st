commands
enableVisualLineMode: aKeyboarEvent
 | mode |
 mode := self class visualLineMode: editor.
 self selectWholeLine.
 mode markIndex: editor startIndex.
 mode markStartIndex: editor startIndex.
 mode markStopIndex: editor stopIndex.
 ^ mode