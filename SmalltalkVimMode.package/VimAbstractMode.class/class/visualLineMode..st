accessing
visualLineMode: anEditor
 | mode index |
 mode := self visualLineMode.
 index := anEditor pointIndex.
 mode markIndex: index.
 mode markStartIndex: index.
 mode markStopIndex: index.
 ^ mode