# note

> Ultra minimal shell script for CLI notes

## Usage

Notes are created in `NOTE_DIR/YYYY-MM.txt` files, where YYYY-MM is the current
year and month.

```sh
# Set the note directory using the NOTE_DIR environment variable in the
# shell configuration file, such as `.bashrc`, `.profile`, etc.
NOTE_DIR=/data/note

# write a note in NOTE_DIR
n A little note to myself
n "Don't forget to quote or escape as needed"


# write command output to note file
ls logs/ | n

# open the note file
n

# multiline note
cat <<EOF | n
some text on line one
and line two
line 3, etc.
EOF
```
