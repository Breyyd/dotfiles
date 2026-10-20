Personal dotfiles and bash scripts to automate the post-installation setup and customization of Fedora Linux. This repository allows for quickly rebuilding the GNOME desktop environment, package configurations, and system settings.
Features

    Automated Fedora post-install setup

    GNOME desktop configuration restoration via dconf (themes, icons, shell behavior)

    Automated GNOME Shell extension enablement

    DNF package installation from custom lists

    Flatpak application installation

    Profile-based configurations (e.g., notebook vs. desktop)

    Dedicated backup and restore scripts

Usage
Restoring the System (Fresh Install)
After installing Fedora, clone the repository, grant execution permissions, and run the installation script with your chosen profile:

git clone https://github.com/Breyyd/dotfiles.git
cd dotfiles
chmod +x scripts/install.sh
./scripts/install.sh notebook

Available profiles:

    notebook

    desktop

Backing Up System Configurations

Run the backup script to update the repository files with your current system setup before reinstalling or switching machines:
chmod +x scripts/backup.sh
./scripts/backup.sh notebook
git add .
git commit -m "Backup Fedora configuration"
git push

Prerequisites

    Fedora Linux (GNOME Edition)

    Bash

    Flatpak enabled with Flathub configured

    Active internet connection

Notes

    Some GNOME extensions may require a session logout or desktop restart to apply changes fully.

    This setup is tailored specifically for Fedora GNOME and will require modifications to run on other distributions or desktop environments.

Motivation
This project was built to:

    Speed up the post-installation process on new Fedora deployments

    Maintain version-controlled system configurations via Git

    Practice Bash scripting and Linux system automation

    Build a practical portfolio focused on SysAdmin and DevOps practices

Maintained for personal use and learning purposes. Feel free to fork, adapt, or reference it for your own setup.
