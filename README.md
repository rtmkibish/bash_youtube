# Repo to learn Bash scripting

## File permissions example

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
 
## File permissions

Command: `chmod <octal number><octal number><octal number>`

Where each octal number(0-7) represents permissions for a particular actor(owner, group, others)

The octal number is the the sum of digits representing a certain permission(read, write, execute)

0 - no permissions

4 - for read

2 - for write

1 - execute

Examples:
 - To grant only read permission for a certain actor we should use `4` as a one particular octal number
 - To grant read and write permissions to the actor we should use the sum of `4` and `2` = `6` as the octal number
 - To grant full permissions to the actor we should use the sum of `4`, `2`, and `1` = `7` as the octal number.
 - To grant full permissions to the file owner and restrict them for the other actors we should use the following command: `chmod 700 <path to the file>`
 
 **You cannot grant only the execute permission(1) to let the actor to run the script. You also need to grant the read permission(4) to let the shell to read the script before its execution. The final octal number would be 5 in this case.**