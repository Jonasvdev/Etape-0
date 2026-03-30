#!/bin/bash 
if[$# -eq 0]; then echo "Tout le monde: $0 <compteur> exit 1 fi wc -w "$1"
