#!/usr/bin/env bash
set -e

echo "🚀 Iniciando restauração do Fedora..."

### 🧪 Detectar sessão gráfica
SESSION_TYPE=${XDG_SESSION_TYPE:-unknown}
echo "🖥 Sessão gráfica detectada: $SESSION_TYPE"

### 📦 Instalar pacotes DNF
if [ -f packages.txt ]; then
  echo "📦 Instalando pacotes DNF..."
  sudo dnf install -y $(cat packages.txt)
fi

### 📦 Instalar Flatpaks
if [ -f flatpaks.txt ]; then
  echo "📦 Instalando Flatpaks..."
  while read -r app; do
    flatpak install -y flathub "$app"
  done < flatpaks.txt
fi

### 🧩 Instalar extensões GNOME automaticamente
if [ -f gnome/extensions.txt ]; then
  echo "🧩 Instalando extensões GNOME..."
  for uuid in $(cat gnome/extensions.txt); do
    if ! gnome-extensions list | grep -q "$uuid"; then
      echo "➡ Instalando $uuid"
      gnome-extensions install "https://extensions.gnome.org/extension-data/${uuid}.shell-extension.zip" || true
    fi
    gnome-extensions enable "$uuid" || true
  done
fi

### 🎨 Restaurar configurações GNOME
echo "🎨 Restaurando configurações GNOME..."
dconf load /org/gnome/ < gnome/interface.dconf || true
dconf load /org/gnome/shell/ < gnome/shell.dconf || true
dconf load /org/gnome/shell/extensions/ < gnome/extensions-settings.dconf || true

### 🎮 Apps essenciais adicionais
echo "🎮 Instalando apps essenciais..."
sudo dnf install -y steam || true

flatpak install -y flathub com.visualstudio.code || true
flatpak install -y flathub com.discordapp.Discord || true

echo "✅ Tudo pronto! Reinicie a sessão para aplicar tudo."

