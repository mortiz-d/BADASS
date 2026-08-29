#!/usr/bin/env bash
#Necesitamos instalar GNS3 para simular una red, necesitamos tanto el server , como la gui
#Ademas tnecesitamos docker para ejecutar los contenedores
#Este script deberia de instalar en nuestro user estas cosas

set -euo pipefail

MODULES_DIR="$(dirname "$(readlink -f "$0")")/modules"

bash "$MODULES_DIR/gn3s.sh"
bash "$MODULES_DIR/docker.sh"
