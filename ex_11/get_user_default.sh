#!/bin/bash
if [ $# -ne 1 ]; then 
	echo "Erreur." >&2
	exit 1
fi 
result=$(sed -n "s/^$1:[^:]*:[^:]*:[^:]*:[^:]*:\([^:]*\):\([^:]*\)$/\1 \2/p" /etc/passwd)

if [ -z "$result" ]; then
	echo "Erreur." >&2
	exit 1
fi 
 echo "$result"
