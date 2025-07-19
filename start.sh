#!/bin/sh

# Crée le dossier assets dans le volume persistant s'il n'existe pas
mkdir -p /var/lib/ghost/content/assets

# Copie le fichier de validation s'il n'existe pas encore dans le volume monté
if [ ! -f /var/lib/ghost/content/assets/148d3015c80c1788169ae32950cb594d.txt ]; then
  cp /var/lib/ghost/content/assets/148d3015c80c1788169ae32950cb594d.txt /var/lib/ghost/content/assets/148d3015c80c1788169ae32950cb594d.txt
fi

# Démarre Ghost en mode production
ghost run --production
