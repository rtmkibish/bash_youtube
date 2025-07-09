## Navigation

 - [Shell variables](#shell-variables)
 - [Tar archive](#tar)
 - [Date](#date)

### Shell variables
 - **PATH** - Contains list of paths with executables
 - **HOME** - Contains the path to the current user's home directory


#### Tar
`tar` - creates an archive

Options:
 - `-c` - creates an archive
 - `-f` - allows to specify the final archive path and name
 - `-v` - verbose. Prints the archived file paths to the stdout

#### Date
`date` - returns current date and time

Options:
 - `+%d-%m-%Y:%H:%M:%S` - a pattern to format the date time value

Example: `date +%d-%m-%Y:%H:%M:%S` returns `09-07-2025:22:20:34`
