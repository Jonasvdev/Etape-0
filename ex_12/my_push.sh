#!/bin/bash
if [ $# -lt 1 ]; then
    echo "Aucun message de commit, aucun ajout et aucun envoi."
    exit 1
fi
# Le premier paramètre est le message du commit
commit_msg="$1"


if [ $# -eq 0 ]; then
    git add .
else
    git add "$@"
fi

# Faire le commit
git commit -m "$commit_msg"

# Envoyer sur le serveur
git push
