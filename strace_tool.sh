#!/bin/bash
echo "::STRACE::>"
read prog_name
strace $prog_name 1>/dev/null 2>/tmp/$prog_name.strace; cat /tmp/$prog_name.strace | cut -d'(' -f1 | sort -u
