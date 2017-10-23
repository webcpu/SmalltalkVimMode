commands
lengthBetweenLastCrAndStopIndex
| lastCrIndex |
lastCrIndex := (editor string) lastIndexOf: (Character cr) startingAt: markStopIndex ifAbsent: 0.
^ markStopIndex - lastCrIndex.