# Install SmalltalkVimMode
## Prerequisites
- Latest Pharo 6.1+ image.
- Pharo VM for Pharo 6.1+.

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
`Esc` exit and enter Normal mode

`i` enter insert mode

`V` enter visual mode per line

## Normal mode
### Comment/Uncomment
`Command + /` comment/uncomment selected code, if there is no selection, the current line will be commented/uncommented.

### Navigation keys
`h` left

`j` down

`k` up

`l` right

`0` moves the cursor to the beginning of the line

`$` moves the cursor to the end of the line

`^` moves the cursor to the first non-empty character of the line

`g_` moves the cursor to the last non-empty character of the line

`w` move forward to the start of the next word (next alphanumeric word)

`W` move forward to the start of the next word (delimited by a white space)

`e` move forward to the end of the next word (next alphanumeric word)

`E` move forward to the end of the next word (delimited by a white space)

`b` move backward to the start of previous word (previous alphanumeric word)

`B` move backward to teh start of previous word (delimited by a white space)

`gg` move to the beginning of the buffer

`G` move to the end of the buffer

`fx` move forward to the next occurrence of character x

`tx` move forward to before the next occurrence of character x

`Fx` move forward to the previous occurrence of character x

`Tx` move forward to after the previous occurrence of character x

### Insert text
`a` Insert text after the cursor

`A` Insert text at the end of the line

`i` Insert text before the cursor

`o` Begin a new line below the cursor

`O` Begin a new line above the cursor

### Delete text
`x`delete character at cursor

`dw` delete a word.

`d0` delete to the beginning of a line.

`d$` delete to the end of a line.

`dgg` delete to the beginning of the file.

`dG` delete to the end of the file.

`dd` delete line

### Simple replace text
`r` Replace the character under the cursor

`R` Replace characters instead of inserting them

### Copy/Paste text
`yy` copy current line into storage buffer

`p` paste storage buffer after current line

### Undo/Redo operation
`u` undo the last operation

`Ctrl + r`redo the last undo
