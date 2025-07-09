# Repo to learn Bash scripting

## Navigation

 - [Changing Shell](#changing-shell)
 - [File permissions](#file-permissions)
 - [Changing file permissions](#changing-file-permission)
 - [Executing scripts](#executing-scripts)
 - [Shell variables](#shell-variables)
 - [Tar archive](#tar)
 - [Date](#date)

### Changing Shell
`chsh -s /bin/bash` - to change the shell to BASH shell
`chsh -s /bin/zsh` - to change the shell to ZSH shell

> Use the `whereis` command to get the full path to the required shell. eg: `whereis bash` -> `/bin/bash`

> Or `chsh -s "$(whereis bash)"`

### File permissions
`drwx r-x r-x <number> <username> <files group name>`
or
`-rwx r-x r-x <number> <username> <files group name>`

Where:
 - `drwx` or `-rwx` - is the file owner(`<username>`) permissions
    > `d` - stands for the directory or `-` stands for the file
    
    > `r` - read permission
    
    > `w` - write permission
    
    > `x` - execute permission
 - `r-x` - group(`<files group name>`) permissions
 - `r-x` - everyone else users permissions
 
### Changing file permission
Command: `chmod <octal number><octal number><octal number> <path_to_file>`
A shorthand command to and an execution permission for ALL users: `chmod +x <path_to_file>`

> Be careful, the `chmod +x <path_to_file>` command allows all users in your machine to execute the file. Consider configuring more restrictive permissions using octal digits with the `chmod` command.

Where each octal number(0-7) represents permissions for a particular actor(owner, group, others)

The octal number is the the sum of digits representing a certain permission(read, write, execute)

0 - no permissions

4 - for read

2 - for write

1 - execute

Examples:
 - To grant only **read** permission for a certain actor we should use `4` as a one particular octal number
 - To grant **read** and **write** permissions to the actor we should use the sum of `4` and `2` = `6` as the octal number
 - To grant **full** permissions to the actor we should use the sum of `4`, `2`, and `1` = `7` as the octal number.
 - To grant **remove all permissions** to the file we should use the following command: `chmod 000 <path to the file>`
 
 **You cannot grant only the execute permission(1) to let the actor to run the script. You also need to grant the read permission(4) to let the shell to read the script before its execution. The final octal number would be 5 in this case.**

### Executing scripts
 - `.` - executes the provided file **in the current shell**. Does not require the file to be executable. 
    > The ZSH shell requires providing a path to the file even if the file is in the current directory, eg: `. ./first_script.sh`

    > The ZSH shell can execute the script file without providing a path if the script file is added to the `PATH` variable.
 - `source` - executes the provided file **in the current shell**. Does not require the file to be executable. In the BASH shell the `source` is a synonym to the `.` command. The ZSH shell does not require a path to the file if the file is in the current directory.
 - `./<script_file_name>` - executes the file **in a new shell**. Requires the file to be executable.
 - `<script_file_name>`- executes the file **in a new shell**. Requires the file to be executable and the folder with the file must be added to the `PATH` variable.

### Shell variables
 - **PATH** - Contains list of paths with executables
 - **HOME** - Contains a path to the current user's home directory
 - **SHELL** - Contains a path to the current shell


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
