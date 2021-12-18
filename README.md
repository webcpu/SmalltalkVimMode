# Smalltalk Vim Mode
Vim Mode for Playground, System Browser, Debugger in Pharo. 

# Install SmalltalkVimMode
## Prerequisites
- Latest Pharo 6.1 image.
- Pharo VM for Pharo 6.1.
**(It doesn't work in the latest Pharo. I have tried to fix it, but my Smalltalk skill is rusty, I have no idea what went wrong.)**

## Execute the code in a Playground in Pharo
```
baseline   := 'SmalltalkVimMode'.
repository := 'github://unchartedworks/SmalltalkVimMode:master'. 
metacello  := [ Metacello new baseline: baseline; repository: repository ].
get        := [ metacello value get ].
load       := [ metacello value onConflict: [:ex | ex allow]; load ].
actions    := {get . load}.
apply      := [ :action | action value ].
actions do: apply.
```

# Shortcuts
## Main
`Esc` enter normal mode

`i` enter insert mode

`V` enter visual mode per line

## Normal mode
### Comment/Uncomment
`Command + /` comment/uncomment selected code, if there is no selection, the current line will be commented/uncommented.

### Navigation keys
`h` left

N `h` left N times

`j` down

N `j` down N times

`k` up

N `k` up N times

`l` right

N `l` right N times

`0` move the cursor to the first character in the line

`$` move the cursor to the last character in the line

`^`	move the cursor to the first non-blank character in the line

`g_` move the cursor to the last non-blank character in the line

`w` move forward to the start of the next word (next alphanumeric word)

N `w` move forward to the start of the next N words (next N alphanumeric words)

`W` move forward to the start of the next word (delimited by a white space)

N `W` move forward to the start of the next N words (delimited by a white space)

`e` move forward to the end of the next word (next alphanumeric word)

N `e` move forward to the end of the next N words (next N alphanumeric words)

`E` move forward to the end of the next word (delimited by a white space)

N `E` move forward to the end of the next N words (delimited by a white space)

`b` move backward to the start of previous word (previous alphanumeric word)

N `b` move backward to the start of previous N words (previous N alphanumeric words)

`B` move backward to teh start of previous word (delimited by a white space)

N `B` move backward to teh start of previous N words (delimited by a white space)

`gg` move to the beginning of the buffer

`G` move to the end of the buffer

`fx` move forward to the next occurrence of character x to the right

N `fx` move forward to the Nth occurrence of character x to the right

`tx` move forward to before the next occurrence of character x to the rigtht

N `tx` move forward to before the Nth occurrence of character x to the right

`Fx` move forward to the Nth occurrence of character x to the left

N `Fx` move forward to the Nth occurrence of character x to the left

`Tx` move forward to after the previous occurrence of character x to the left

N `Tx` move forward to after the Nth occurrence of character x to the left

### Insert text
`a` insert text after the cursor

`A` insert text at the end of the line

`i` insert text before the cursor

`o` begin a new line below the cursor

`O` begin a new line above the cursor

### Delete text
`x` delete character at the cursor

N `x` delete N characters from the cursor

`dw` delete a word.

N `dw` delete N words.

`d0` delete to the beginning of a line.

`d$` delete to the end of a line.

`dgg` delete to the beginning of the file.

`dG` delete to the end of the file.

`dd` delete line

N `dd` delete N lines

### Simple replace text
`r` peplace the character under the cursor

`R` replace characters instead of inserting them

### Copy/Paste text
`yy` copy current line into storage buffer

`p` paste storage buffer after current line

N `p` paste N times storage buffer after current line

### Undo/Redo operation
`u` undo the last operation

N `u` undo the last N operations

`Ctrl + r`redo the last undo operation

N `Ctrl + r`redo the last N undo operations
