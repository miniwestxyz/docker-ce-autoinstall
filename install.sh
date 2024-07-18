#!/bin/bash

# Farbdefinitionen
YELLOW='\033[1;33m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'

# Sprache des Betriebssystems erkennen
LANGUAGE=$(echo $LANG | cut -d'_' -f1)

# Nachrichten
if [ "$LANGUAGE" == "de" ]; then
    MSG_TITLE="${MAGENTA}Docker CE Installationsskript :)${NC}"
    MSG_PROFESSION="${CYAN}Professionell natürlich :)${NC}"
    MSG_COMPLETE="${YELLOW}Installation fertig :)${NC}"
else
    MSG_TITLE="${MAGENTA}Docker CE Install Script :)${NC}"
    MSG_PROFESSION="${CYAN}Professionally, of course :)${NC}"
    MSG_COMPLETE="${YELLOW}Installation complete :)${NC}"
fi

# Stilvolle Nachrichtenbox
function message_box() {
    local message=$1
    local length=$((${#message} + 4))
    echo -e "${CYAN}"
    echo -e "┌$(printf '─%.0s' $(seq 1 $length))┐"
    echo -e "│  ${message}  │"
    echo -e "└$(printf '─%.0s' $(seq 1 $length))┘"
    echo -e "${NC}"
}

# Terminal leeren
clear

# Nachrichten anzeigen
message_box "$MSG_TITLE"
message_box "$MSG_PROFESSION"

# Docker CE installieren
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Abschlussnachricht anzeigen
message_box "$MSG_COMPLETE"
