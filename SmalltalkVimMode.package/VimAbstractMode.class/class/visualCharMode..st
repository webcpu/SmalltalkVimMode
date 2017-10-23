accessing
visualCharMode: anEditor
 | mode index |
 mode := self visualCharMode.
 index := anEditor pointIndex.
 mode markIndex: index.
 mode markStartIndex: index.
 mode markStopIndex: index.
 ^ mode