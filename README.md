# 🐧 Fedora Dotfiles & Setup Automation

This repository contains my personal Fedora Linux setup automation.
It allows me to quickly restore my GNOME environment, applications,
and system configuration using simple Bash scripts.

## ✨ Features

- Automated Fedora setup
- GNOME configuration restore (themes, icons, shell)
- GNOME Extensions auto-enable
- DNF package installation
- Flatpak application installation
- Profile-based setup (notebook / desktop)
- Backup & restore scripts

## 📁 Repository Structure

dotfiles/
├── install.sh
├── backup.sh
├── profiles/
│ ├── notebook/
│ │ ├── packages.txt
│ │ ├── flatpaks.txt
│ │ └── gnome.dconf
│ └── desktop/
│ ├── packages.txt
│ ├── flatpaks.txt
│ └── gnome.dconf
├── gnome/
│ ├── extensions.txt
│ ├── extensions-settings.dconf
│ ├── interface.dconf
│ └── shell.dconf
└── README.md

## 🚀 Usage

### Restore system (fresh install)

```bash
git clone https://github.com/Breyyd/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh notebook
Available profiles:

notebook

desktop

Backup current system
chmod +x backup.sh
./backup.sh notebook
git add .
git commit -m "Backup Fedora configuration"
git push
🧠 Requirements

Fedora Linux

GNOME Desktop Environment

Bash

Flatpak enabled

Internet connection

⚠️ Notes

Some GNOME extensions may require logout/login to fully apply.

This setup is tailored to Fedora GNOME and may not work on other desktops.
📌 Motivation

This project was created to:

Speed up Fedora reinstallation

Keep system configuration versioned

Practice Linux automation and Bash scripting

Build a personal DevOps-style portfolio

...
This repository is for personal use and learning purposes.
