<div align=center>
    <h3 align=center> Simple Obsidian sync</h3>
    <p align=center>Script for syncing* Obsidian notes beetween  Windows devices</p>
</div

## About Project

>[!success] This `.bat` script is  compatible with windows

A simple way to sync Obsidian notes between deviced using `git pull` and `git push` commands

The main idea:
 - **simplicity** - interactive script allows manage notes in a few minutes
 - **convenience** - using `Github` repository as a place to hold notes
 - **predictability** - as a script uses basic `git` commands, nothing will happen to the note's repository: no settings, no scheduling, no rebasing
 -  **situationality** - script allows to control notes by syncing them in a time when it's neccecary

## Why is it not actual sync

*First of all, this sollution is my idea to control my notes between my laptop and PC, I always know when I need to sync them, so I basically use this script to push notes to the reposotory and pull it on other device

>[!warning] This script uses `git push` to post notes to the repository, and `git pull` to get them on other device. It's not actual syncing: it's not happening automatically

This way of syncing notes makes me feel more confident nothing will happen with my notes while using the script

## Install

Clone this repository to a folder where yours `Obsidian Vault` is located:
```powershell
git clone https://github.com/utkanos420/Obsidian-bat-sync.git
```

>[!warning] Make sure to make a copy of your notes before using script!

Create a Github repository for your notes

Download a `Git` on your device
Basic configuration:
```git
git config --global user.name "Your Name"
git config --global user.email "Your email"
```

Make sure to login to your Github account with browser

## Usage 

Run the `Obsidian-bat-sync.bat` script, use `3` in Menu to configure your Github repository URL

Syncing:
- use `1` to push notes from your device to Github
- after that use `2` on your device where you want to get notes

## Support

* [![Telegram](https://img.shields.io/badge/Telegram-2CA5E0?logo=telegram&logoColor=white)](#) @utkanos420
* [![Discord](https://img.shields.io/badge/Discord-%235865F2.svg?&logo=discord&logoColor=white)](#) @utkanos420
