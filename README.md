# Tools

### strace_tool.sh
find all of the syscalls used by a program
```bash
#!/bin/bash
echo "::STRACE::>"
read prog_name
strace $prog_name 1>/dev/null 2>/tmp/$prog_name.strace; cat /tmp/$prog_name.strace | cut -d'(' -f1 | sort -u
```
