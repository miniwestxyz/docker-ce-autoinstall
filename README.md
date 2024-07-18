# Docker CE Auto-Install Script

Dieses Repository enthält ein Skript zur automatischen Installation von Docker CE auf einem Linux-Betriebssystem. Das Skript erkennt die Sprache des Betriebssystems (Deutsch oder Englisch).

## Inhaltsverzeichnis

- [Features](#features)
- [Voraussetzungen](#voraussetzungen)
- [Installation](#installation)
- [Benutzung](#benutzung)
  
## Features

- Automatische Erkennung der Systemsprache (Deutsch oder Englisch).
- Einfache und schnelle Installation von Docker CE.

## Voraussetzungen

- Ein Linux-basiertes Betriebssystem.
- `curl` muss installiert sein.
- `sudo` Rechte werden für die Installation benötigt.

## Installation

Um das Skript auszuführen und Docker CE automatisch zu installieren, nutzen Sie einfach den folgenden Befehl:

```sh
bash <(curl -fsSL https://raw.githubusercontent.com/miniwestxyz/docker-ce-autoinstall/main/install.sh)
