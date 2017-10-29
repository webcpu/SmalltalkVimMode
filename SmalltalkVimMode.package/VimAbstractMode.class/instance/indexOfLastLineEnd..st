commands
indexOfLastLineEnd: characterIndex
 | index |
 index := ((characterIndex = ((editor string size) + 1)) or: [(editor string at: characterIndex) = (Character cr)])
  ifTrue: [ characterIndex - 1]
  ifFalse: [ characterIndex ].
	^ editor string lastIndexOf: (Character cr) startingAt: index ifAbsent: 0.