vim-visual-line-mode
lineModeMarkBufferEnd: aKeyboardEvent
 | begin end |
 begin := editor startIndex.
 end := (editor string size) + 1.
 editor selectFrom: begin to: end.