#!/bin/bash

# Entête du fichier
# Auteur : Michael Launay
# Email : michaellaunay@logikascium
# Date : 2024-03-28
# Description : Script pour créer une arborescence de projet basique.

# Fonction pour afficher l'aide
display_help() {
    echo "Usage: $0 [nom du projet] [répertoire]"
    echo -e "\nOptions:"
    echo -e "  -h\t\tAffiche ce message d'aide et quitte"
    echo -e "\nExemple:"
    echo -e "  $0 MonProjet /chemin/vers/repertoire"
}

# Vérifier si l'option d'aide est demandée
if [[ "$1" == "-h" ]]; then
    display_help
    exit 0
fi

# Vérifier le nombre d'arguments
if [ "$#" -ne 2 ]; then
    echo "Erreur: Nombre d'arguments incorrect."
    display_help
    exit 1
fi

# Nom du projet et répertoire cible à partir des arguments
PROJECT_NAME=$1
TARGET_DIR=$2/$1

# Créer l'arborescence du projet
mkdir -p "$TARGET_DIR"/{src/converter,tests,data/markdown,data/html,docs}

# Créer les fichiers
touch "$TARGET_DIR"/README.md
touch "$TARGET_DIR"/requirements.txt
touch "$TARGET_DIR"/src/main.py
touch "$TARGET_DIR"/src/converter/markdown_to_html.py
touch "$TARGET_DIR"/src/converter/utils.py
touch "$TARGET_DIR"/tests/test_converter.py
touch "$TARGET_DIR"/docs/project_docs.md

echo "Arborescence du projet $PROJECT_NAME créée dans $TARGET_DIR."
