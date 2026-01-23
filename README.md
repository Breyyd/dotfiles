# 🐧 Fedora Dotfiles & Setup Automation

This repository contains my personal Fedora Linux setup automation.
It allows me to quickly rebuild my GNOME environment, apps, and system configuration using simple Bash scripts.

---

## ✨ Features

- ⚙️ Automated Fedora setup  
- 🎨 GNOME configuration (themes, icons, shell behavior)  
- 🧩 GNOME Extensions auto-enable  
- 📦 DNF package installation  
- 📦 Flatpak application installation  
- 📁 Profile-based setup (notebook / desktop)  
- 💾 Backup & restore scripts  

---

## 📂 Repository Structure

```text
dotfiles
├─ 📁 gnome                           # GNOME desktop settings
│  ├─ interface.dconf                 # Theme, icons and cursor settings
│  ├─ shell.dconf                     # GNOME Shell configuration
│  └─ extensions-settings.dconf       # GNOME extensions configuration
├─ 📁 scripts                         # Automation scripts
│  ├─ install.sh                      # Restore system settings
│  └─ backup.sh                       # Backup current system
├─ 📄 packages.txt                    # List of user-installed DNF packages
├─ 📄 flatpaks.txt                    # List of installed Flatpak apps
└─ 📄 README.md                       # Project documentation
🚀 Usage
🆕 Restore system (fresh install)
git clone https://github.com/Breyyd/dotfiles.git
cd dotfiles
chmod +x install.sh
./install.sh notebook
Available profiles:
notebook
desktop
💾 Backup current system

Before reinstalling or switching machines:
chmod +x backup.sh
./backup.sh notebook
git add .
git commit -m "Backup Fedora configuration"
git push
🧠 Requirements

✔ Fedora Linux
✔ GNOME Desktop Environment
✔ Bash
✔ Flatpak enabled
✔ Internet connection

⚠️ Notes

Some GNOME extensions may require logout/login to fully apply.

This setup is tailored for Fedora GNOME and may not work on other desktops.
📌 Motivation

This project was created to:

🛠 Speed up Fedora reinstallation

🔁 Keep system configuration versioned

💻 Practice Linux automation and Bash scripting

🚀 Build a personal DevOps-style portfolio
📄 License

This repository is for personal use and learning purposes!

