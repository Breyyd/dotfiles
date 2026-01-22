#!/usr/bin/env bash
set -e

echo "💾 Iniciando backup do Fedora..."

mkdir -p gnome

### 📦 Pacotes DNF
echo "📦 Salvando pacotes DNF..."
dnf history userinstalled | awk '{print $1}' > packages.txt

### 📦 Flatpaks
echo "📦 Salvando Flatpaks..."
flatpak list --app --columns=application > flatpaks.txt

### 🧩 Extensões GNOME
echo "🧩 Salvando extensões GNOME..."
gnome-extensions list > gnome/extensions.txt

### 🎨 Configurações GNOME
echo "🎨 Salvando configurações GNOME..."
dconf dump /org/gnome/ > gnome/interface.dconf
dconf dump /org/gnome/shell/ > gnome/shell.dconf
dconf dump /org/gnome/shell/extensions/ > gnome/extensions-settings.dconf

echo "✅ Backup concluído!"
