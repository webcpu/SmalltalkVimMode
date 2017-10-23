accessing
visualCharMode: anEditor
 | mode |
 mode := self class visualCharMode.
 mode markIndex: editor pointIndex.
 mode markStartIndex: markIndex.
 mode markStopIndex: markIndex.
 ^ mode