commands
lengthBetweenLastCrAndStartIndex
| lastCrIndex |
lastCrIndex := (editor string) lastIndexOf: (Character cr) startingAt: markStartIndex  ifAbsent: 0.
^ markStartIndex - lastCrIndex.