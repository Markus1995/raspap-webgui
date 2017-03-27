UPDATE_URL="https://raw.githubusercontent.com/markus1995/raspap-webgui/master/"
wget -q ${UPDATE_URL}/installers/common.sh -O /tmp/raspapcommon.sh
source /tmp/raspapcommon.sh && rm -f /tmp/raspapcommon.sh

function update_system_packages() {
    install_log "Quellen aktualisieren"
    sudo apt-get update || install_error "Fehler beim aktualisieren"
}

function install_dependencies() {
    install_log "Installiere die benötigten Pakete"
    sudo apt-get install lighttpd php5-cgi git hostapd dnsmasq || install_error "Fehler beim installieren"
}

install_raspap
