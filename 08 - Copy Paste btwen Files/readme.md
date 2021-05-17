# 08 - Copy and Pasting Between Files

Normally we can copy form terminal to vim editor using `ctrl+shift c` and `ctrl+shift v`.

## Registers

To directly control what we copy and paste, we will need to use registers.
`"ay` will copy the selection into register a
`"ap` will paste what is in register a into the editor

This also helps prevent losing your copied text when you cut a line in the process.
