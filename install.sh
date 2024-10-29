#!/bin/bash
clear

export LN='\033[0;34m'
export BG='\E[44;1;39m'
export NC='\033[0;37m'
export RD='\033[0;31m'
export GN='\e[32m'

export ERROR="$LN│$NC  $RD***$NC $RD[ERROR]$NC"
export SUCCESS="$LN│$NC  $RD***$NC $GN[SUCCESS]$NC"
export RUN="$LN│$NC  $RD***$NC $GN[RUN]$NC"
export RUM="$LN│$NC  "
export TRY="$LN│$NC  $RD***$NC $GN[TRY]$NC"

export install_url="raw.githubusercontent.com/kayroy/xbcnjdmz/main"

export local_version=$(cat /home/ver)  
export server_version=$(curl -sS "https://api.dotycat.com/MT3/version")


function check_dependencies() {
    clear
    update_system
    install_nodejs
    install_dependencies
    check_linux_headers
    setup_timezone
    local dependencies=("curl" "jq")
    for cmd in "${dependencies[@]}"; do
        if ! command -v "$cmd" &> /dev/null; then
            apt update && apt install -y "$cmd"
        fi
    done
    sleep 5
}

function ins_menu() {
    clear
    echo -e "$LN┌────────────────────────────────────────────────────┐$NC"
    echo -e "$LN│$NC $BG                • MENU INSTALLER •                $NC $LN│$NC"
    echo -e "$LN└────────────────────────────────────────────────────┘$NC"
    echo -e "$LN•────────────────────────────────────────────────────•$NC"
    echo -e "$LN┌────────────────────────────────────────────────────┐$NC"

    echo -e "$TRY Starting..."
    sleep 2
    
    echo -e "$TRY Please wait..."
    sleep 2
    
    echo -e "$TRY Checking required files..."
    sleep 2
    
    echo -e "$TRY Downloading menu files..."
    
    menu_scripts=(
        "menu/menu.sh"
        "menu/ssh.sh"
        "menu/vmess.sh"
        "menu/vless.sh"
        "menu/trojan.sh"
        "menu/socks.sh"
        "menu/speedtest.sh"
        "menu/backup.sh"
        "menu/autobackup.sh"
        "menu/bot.sh"
        "menu/autoreboot.sh"
        "menu/domain.sh"
        "menu/settings.sh"
        "menu/netcek.sh"
        "menu/xp.sh"
        "menu/dns.sh"
        "menu/nv.sh"
    )

    for script in "${menu_scripts[@]}"; do
        script_name=$(basename "$script" .sh) 
        echo -e "$TRY Downloading $script_name..."
        if wget -q "https://${install_url}/$script" -O "/usr/local/sbin/$script_name"; then
            chmod +x "/usr/local/sbin/$script_name"
            echo -e "$TRY Successfully downloaded and installed $script_name."
        else
            echo -e "$TRY Failed to download $script_name. Please check the URL or network connection."
        fi
    done

    sleep 2
    
    echo -e "$LN└────────────────────────────────────────────────────┘$NC"
    echo -e "$LN•────────────────────────────────────────────────────•$NC"
    echo -e ''
    sleep 5
}


function remove_sh() {
    project_version=$(curl -s "https://api.dotycat.com/MT3/version")

    if [ $? -eq 0 ]; then
        echo "$project_version" > /home/ver
        rm /root/*.sh
    else
        echo "Failed to retrieve project version from API."
    fi
    sleep 5
}


function insuccess(){
    clear
    echo -e "$LN┌────────────────────────────────────────────────────┐$NC"
    echo -e "$LN│$NC $BG            • INSTALLATION SUCCESSFUL •           $NC $LN│$NC"
    echo -e "$LN└────────────────────────────────────────────────────┘$NC"
    echo -e "$LN•────────────────────────────────────────────────────•$NC"
    echo -e "$LN┌────────────────────────────────────────────────────┐$NC"
    echo -e "$TRY Thank you for choosing our services!"
    echo -e "$TRY Installation has been successfully."
    echo -e "$TRY Enjoy your experience!"
    echo -e "$LN└────────────────────────────────────────────────────┘$NC"
    echo -e "$LN•────────────────────────────────────────────────────•$NC"
    echo -e ''
    sleep 5
    reboot
}

update_system() {
    clear
    sudo apt update -y
    sudo apt install curl -y
    sudo apt dist-upgrade -y
    sudo apt-get remove --purge ufw firewalld exim4 -y
    sudo apt install -y screen curl jq bzip2 gzip coreutils rsyslog iftop htop zip unzip net-tools sed gnupg gnupg1 \
        bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch screenfetch git lsof \
        openssl fail2ban tmux stunnel4 vnstat
}

install_nodejs() {
    clear
    curl -sSL https://deb.nodesource.com/setup_20.x | bash -
    sudo apt-get install nodejs -y
}


install_dependencies() {
    clear
    sudo apt install -y libnss3-dev libnspr4-dev pkg-config libpam0g-dev libcap-ng-dev libcap-ng-utils \
        libselinux1-dev libcurl4-nss-dev flex bison make libnss3-tools libevent-dev xl2tpd pptpd
}

check_linux_headers() {
    clear
    local required_pkg="linux-headers-$(uname -r)"
    if ! dpkg-query -W --showformat='${Status}\n' "$required_pkg" | grep -q "install ok installed"; then
        echo "No $required_pkg. Setting up $required_pkg."
        apt-get --yes install "$required_pkg"
    fi
}

setup_timezone() {
    clear
    ln -fs /usr/share/zoneinfo/Asia/Kuala_Lumpur /etc/localtime
    sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
    sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1
}

setup_domain_and_ns() {
    clear
    echo -e "$LN┌────────────────────────────────────────────────────┐$NC"
    echo -e "$LN│$NC $BG             • SETUP DOMAIN/NS NAME •             $NC $LN│$NC"
    echo -e "$LN└────────────────────────────────────────────────────┘$NC"
    echo -e "$LN•────────────────────────────────────────────────────•$NC"
    echo -e "$LN┌────────────────────────────────────────────────────┐$NC"

    if [ ! -d "/etc/xray" ]; then
        mkdir -p /etc/xray
    fi
    
    while true; do
        echo -e " ${TRY} Domain : \c"
        read -r domain
        if [ -z "$domain" ]; then
            echo -e " ${TRY} Please enter a valid domain."
        else
            echo "$domain" > /etc/xray/domain
            echo -e " ${TRY} Domain '$domain' has been saved successfully."
            echo -e "$LN│$NC"
            break  
        fi
    done
    echo -e "$LN└────────────────────────────────────────────────────┘$NC"
    echo -e "$LN•────────────────────────────────────────────────────•$NC"
    echo -e ''
}

download_scripts() {
    clear 
    main_scripts=(
        "main/ssh-vpn.sh"
        "main/ins-xray.sh"
        "main/insshws.sh"
        "main/udp.sh"
        "main/qos.sh"
    )

    for script in "${main_scripts[@]}"; do
        script_name=$(basename "$script")
        echo -e "$TRY Downloading $script_name..."
        
        # Download the script
        if wget -q "https://${install_url}/$script" -O "/root/$script_name"; then
            chmod +x "/root/$script_name"
            echo -e "$TRY Running $script_name..."
            "/root/$script_name" || {
                echo -e "$ERROR Failed to run $script_name."
            }
        else
            echo -e "$ERROR Failed to download $script_name."
        fi
    done
}


setup_crontab() {
    clear
    local cron_job="0 5 * * * root reboot"
    local cron_job2="0 0 * * * root /usr/local/sbin/xp"
    local crontab_file="/etc/crontab"

    if ! grep -q "$cron_job" "$crontab_file"; then
        echo "$cron_job" >> "$crontab_file"
    fi

    if ! grep -q "$cron_job2" "$crontab_file"; then
        echo "$cron_job2" >> "$crontab_file"
    fi
}

create_profile() {
    clear
    cat > /root/.profile << END

if [ "\$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
clear
menu
END
    chmod 644 /root/.profile
}

check_dependencies
setup_domain_and_ns
download_scripts
setup_crontab
create_profile
ins_menu
insuccess
remove_sh
