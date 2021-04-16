# Useful Commands
## Navigation 
| Key | Description | 
| --- | --- |
| `w` | jump to start next word |
| `e` | jump to end of next word | 
| `b` | jump to start of previous word |
| `0`, `^`, `$` | Beginning, first non-space, end of line | 
| `l`, `m`, `h` | Low, mid, high position on screen | 
| `ctrl+U`,`ctrl+D` | go up/down page | 
| `gg`, `G`| go to first, last line of document | 
| `5gg` | go to line 5 | 
| `}` | jump to next paragraph | 
| `%` | jump between opening/closing parentheses |
| `;` | repeat previous `f`, `t` movement | 
| `,` | `;` but backwards | 
| `fx`, `Fx` | jump to next, previous occurence of `x`, `t` cmd is similar | 

## Editing
| Key | Description | 
| --- | --- |
| `u`, `ctrl+R` | undo, redo |
| `o`, `O` | Insert line below/above |
| `d` | Delete, but needs to be combined with a movment | 
| `dw` | Delete word | 
| `c` | Change, is similar to `d`, need to be combined |
| press cmd twice | edit the line |
| `dd` | Delete Line | 
| `D`/`d$` | delete to end of line |  
| `x` | deletes the current char, but stays in `normal` mode | 
| `r` | replaces a character | 

## Copy Paste
`y` is copy, and `p` is paste, also take movement keys as argument. 
Try `yy` and `yw` followed by `p` to paste.

| Key | Description | 
| --- | --- |
| `yy` | Yank - copy a line |
| `yw` | copy current word | 
| `y$` | copy to end of line | 
| `p` | paste after cursor |
| `P` | past before cursor | 

But we often like to copy and paste a selection of text. To do that we use the `visual` mode. 
To enter visual mode, press `v`. 
Sequence `v` to enter visual mode > select texts with movement keys > `y` to copy > `p` to paste. 
`V` is visual line mode, selects whole lines. 
`ctrl+v` is visual block mode. 

| Key | Description | 
| --- | --- |
| `~` | Change character case |

## Counts
If we press a number before a command, it will repeat that command x number of times. 
`4j` will move down in line 4 times.
`7dw` delete 7 words. 
This can be very useful when combined with `visual` mode. 

## Modifiers
Say we want to change our text inside the bracket `[example text]`. 
We can do `2dw` or `2cw`. 
`ci[` - change inside bracket
`da[` - will delete the words including the parenthesis. .



## Search
'/` to search for a pattern. Then press `enter` to move cursor. 

| Key | Description | 
| 'n' | find next occurrence |
| `N` | find previous occurence | 