# 04 - Working with Multiple Files

We can open multiple files with just `$ vim /path/to/file1 ./file2`
To jump between files we can use `:n(ext)` and `:prev`

We can also keep files in tabs `$ vim -p /path/to/file1 ./file2`
When in Vim, we can do `:tabe ./file2`

To switch between tabs: `tabn` or `tabp`, or `gT` and `gt`

## Splitting Window

To split a window horizontally: `:sp[lit] ./file2`
To split a window vertically: `:vs[plit] ./file2`

Navigating between windows: `Ctrl+w <arrow>` `ctrl+w [hjkl]`
Next window: `ctrl+w w`
Previous window: `ctrl+w p`
Close window: `ctrl+w c`
Close all other windows: `ctrl+w o`
