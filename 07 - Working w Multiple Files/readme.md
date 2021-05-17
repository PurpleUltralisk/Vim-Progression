# 07 - Working with Multiple Files

We always have multiple files opened at the same time.
This is the first step towards having a similar workflow experience as VSCode.

To start, we will install NERDTree.
Link to [NERDTree github](https://github.com/scrooloose/nerdtree)

## Split window

To split window in vim:
ctrl-w s - split windows horizontally
ctrl-w v - split windows vertically

Open file with split window in NERDTree:
i - horizontal split
s - vertical split

The default keys to switch between windows is: ctrl-w + h,j,k, l.
But I remapped it to just ctrl+ h,j,k,l with:
`map <C-h> <C-w>h`

## Working with tabs

Open a file or directory in a new tab with NERDTree by pressing `t`
To navigate between tabs:
gt - Next tab
gT - Previous tab
{i}gt - Go to tab in position i

## Create files with NERDTree

Navigate to the directory you want to create enw file in, press `m` to bring filesystem menu
Press `a` to add a childe node, and type in the filename
To create a directory, append the name with a `/`
