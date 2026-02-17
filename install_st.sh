#!/bin/bash

# Colores para que se vea pro
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Iniciando instalación de elpepesaurio-st...${NC}"

# 1. Instalar Fuentes
echo -e "${GREEN}Copiando fuentes Monocraft...${NC}"
mkdir -p ~/.local/share/fonts
cp Fonts-Minecraft/*.ttf ~/.local/share/fonts/
cp Fonts-Minecraft/*.otf ~/.local/share/fonts/
fc-cache -fv > /dev/null

# 2. Compilar st
echo -e "${GREEN}Compilando st...${NC}"
cd st/
# Limpiamos archivos previos de root para evitar errores de permisos
sudo make clean 
make

# 3. Instalar st
echo -e "${GREEN}Instalando en el sistema...${NC}"
sudo make install

echo -e "${BLUE}¡Listo! Ya puedes ejecutar 'st' y disfrutar del estilo Minecraft.${NC}"
