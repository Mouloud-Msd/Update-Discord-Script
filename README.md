# Update-Discord-Script

an old script i use to update Discord on ubuntu since it doesn't update automatically,

The script downloads the latest version from the official source:
----------------- https://discord.com/api/download?platform=linux&format=deb
then installs it using
----------------- dpkg -i discord_latest.deb

At the end, it asks whether you want to keep or delete the installation package.
