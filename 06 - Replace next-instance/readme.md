# 06 - Replace Next Instance of Word

This is similar to selecting multiple instances of a phrase in VSCode using `ctrl+d`.
Here are the steps and explanations:

1. Search for a phrase by typing `/phrase-to-search` while in `Normal` mode.
2. While in this mode we can go to the next search result by pressing `n`. Or go to previous result by pressing `N`.
3. To change the next instance of the search result we can type `cgn`.
4. We can let Vim repeat this action by pressing `.`
   We can also skip instances by press `n` to skip over an occurrence.

## :s

We can replace the next instance of a word `quis`
In normal mode, we type this command
`:s/quis/newword`
To replace all instances of the word in current line
`:s/quis/newword/g`
To replace all instances of the word in the file
`:%s/old/new/g`
To find every occurrenc and prompt to substitute or not
`:%s/old/new/gc`

**Note:** This works with regular expressions as well.
