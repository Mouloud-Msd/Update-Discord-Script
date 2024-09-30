

$(curl -sSL "https://discord.com/api/download?platform=linux&format=deb" -o discord_latest.deb)
if [ $? -ne 0 ];then
    echo "Error downloading with curl, please check your network"
    exit 1
fi

sudo dpkg -i discord_latest.deb
if [ $? -ne 0 ]; then
    echo "Error Installing package, please check your disk space"
    exit 1
fi



asks_to_delete_dpkg(){
    while true; do
        read -p "$1 (yes/no) " response
        if [ "$response" = "yes" ]; then return 0
            return 0
        else
            return 1
        fi
    done
}
asks_to_delete_dpkg "Do You want to remove the debian package file after the installation completes ?" 
if [ $? -eq 0 ]; then
    $(rm discord_latest.deb)
    echo "the package discord_latest.deb removed succesfully !"
fi
echo "installation finished succesfully"
exit