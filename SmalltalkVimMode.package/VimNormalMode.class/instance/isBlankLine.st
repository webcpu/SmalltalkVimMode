testing
isBlankLine
 | index isSeparator line |
 index := editor string lineNumberCorrespondingToIndex: editor pointIndex.
 isSeparator := [ :x | x isSeparator not ]. 
 line := editor string lines at: index.
 ^ (line select: isSeparator) size = 0