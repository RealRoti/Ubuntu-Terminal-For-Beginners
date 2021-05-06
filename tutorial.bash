# TUTORIAL BASE PER IL TERMINALE UBUNTU DEBIAN
#----------------------------------------------#

#INSTALLARE PACCHETTI
sudo apt-get install

#DISINSTALLARE PACCHETTI
dpkg --list
#prendi il pacchetto che ti interessa e digita 
sudo apt-get --purge remove <nome>
#per eliminare quelli non indispensabili
sudo apt autoremove
#per aggiornare 
sudo apt upgrade
#per pulire la cache
sudo apt-get clean

#FORZARE CANCELLAZIONE FILE
sudo rm -d '<directory>'

#CENTRARE BARRA APPLICAZIONI IN BASSO
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64
gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items true

########################################
# INSTALLARE (o fixare malfunzionamenti) DROIDCAM (con client video annessi)

sudo /opt/droidcam-uninstall
cd /tmp/
wget -O droidcam_latest.zip https://files.dev47apps.net/linux/droidcam_1.7.2.zip
unzip droidcam_latest.zip -d droidcam
cd droidcam && sudo ./install-client

# ora passiamo ai client
sudo apt install linux-headers-`uname -r` gcc make
sudo ./install-client
sudo ./install-video
#######################################
# CONNETTERSI AD UNA VPN (ProtonVPN)
# nb è necessario un account ProtonVPN registrato. Se non lo hai, recati sul sito ufficiale (c'è anche la versione free che consiglio).
# 1) Installare la repo. Questo passaggio è da fare solo la prima volta.
sudo apt-get upgrade
wget -q -O - https://repo.protonvpn.com/debian/public_key.asc | sudo apt-key add - 
sudo add-apt-repository 'deb https://repo.protonvpn.com/debian unstable main'
sudo apt-get update && sudo apt-get install protonvpn

# 2) Connettersi al tunnel privato virtuale
protonvpn-cli login [il tuo username di ProtonVPN]
protonvpn-cli connect
 # selezionate il server a cui volete connettervi e il tipo di connessione
