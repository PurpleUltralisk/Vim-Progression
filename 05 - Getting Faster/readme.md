# 05 - Getting Faster

## To copy/delete an entire section

1. `V` to enter visual mode
2. select the text
3. `d` to delete and `y` to copy`
4. `p` or `P` to paste

## Searching for text

1. `/searcText` to start searching
2. press `enter` to jump to 1st result
3. press `n` to go through the results, `N` to go back through results
   Bonus: press `*` to jump to next ocurrence of current cursor, `#` to go backwards

## Delete

`x` to delete character
`s` to delete character and go into `insert` mode
`D` will delete the rest of the line
`S` will delete rest of line and go into `insert` mode

## Jumping to a character

`f+<char>` will jump to that character
`t+<char>` will jump to just before that character
If there are multiple of that character, press `;` to repeat the jump. press `,` to jump back.
Bonus:
Say we have `new Array(expectedLen - len).fill("")` and we want to delete inside the bracket.
`fe ;` to go to `expectedLen`
`dt)` will delete everything inside the bracket, `delete to )`
Same combo can work for yank `y` as well.
