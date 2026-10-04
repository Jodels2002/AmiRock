#!/usr/bin/env bash
#
# ==============================================================
# AmiRock-OS Install / Update Script
# By B. Titze 2026
# ==============================================================

# ==============================================================
# Variablen
# ==============================================================

 USER_NAME="${SUDO_USER:-$USER}"
 USER_HOME="$(getent passwd "$USER_NAME" | cut -d: -f6)"

 AMIROCK="$USER_HOME/AmiRock"
 AMIGA="/opt/Amiga"
 BACKUP="/opt/Backup"
 OPT_AMIROCK="/opt/AmiRock"

 DATA_PAC="$AMIROCK/config/data.pac"
 AMIGA_ZIP="$OPT_AMIROCK/Amiga/Amiga.zip"

 APP_DIR="/usr/share/applications"
 FONT_DIR="/usr/share/fonts/truetype/amiga"
 PLYMOUTH_DIR="/usr/share/plymouth/themes"

# ==============================================================
# Farben
# ==============================================================

BLACK='\033[0;39m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
GREY='\033[1;30m'
YELLOW='\033[1;33m'
NC='\033[0m'

# ==============================================================
# Fehlerbehandlung
# ==============================================================

error_exit()
{
    echo
    echo -e "${RED}================================================${NC}"
    echo -e "${RED} FEHLER${NC}"
    echo -e "${RED}================================================${NC}"
    echo -e "${RED}$1${NC}"
    echo
    exit 1
}

trap 'error_exit "Fehler in Zeile $LINENO: $BASH_COMMAND"' ERR

# ==============================================================
# Root prüfen
# ==============================================================

if [[ $EUID -eq 0 ]]; then
    error_exit "Dieses Script bitte NICHT direkt als root starten."
fi

# ==============================================================
# sudo prüfen
# ==============================================================

sudo -v

# sudo Session während des Scripts aktiv halten
(
    while true; do
        sudo -n true
        sleep 60
        kill -0 "$$" 2>/dev/null || exit
    done
) 2>/dev/null &

SUDO_KEEPALIVE_PID=$!

cleanup()
{
    kill "$SUDO_KEEPALIVE_PID" 2>/dev/null || true
}

trap cleanup EXIT

# ==============================================================
# Hilfsfunktionen
# ==============================================================

header()
{
    clear

    if command -v toilet >/dev/null 2>&1; then
        toilet "AmiRock-OS" --metal
    else
        echo
        echo "=========================================="
        echo "              AmiRock-OS"
        echo "=========================================="
    fi

    echo
}

info()
{
    echo -e "${BLUE}$1${NC}"
}

success()
{
    echo -e "${GREEN}$1${NC}"
}

warning()
{
    echo -e "${YELLOW}$1${NC}"
}

error()
{
    echo -e "${RED}$1${NC}"
}

ensure_dir()
{
    local dir="$1"

    if [[ ! -d "$dir" ]]; then
        sudo mkdir -p "$dir"
    fi
}

copy_if_exists()
{
    local source="$1"
    local destination="$2"

    if [[ -e "$source" ]]; then
        sudo cp -a "$source" "$destination"
    else
        warning "Nicht gefunden: $source"
    fi
}

copy_dir_contents()
{
    local source="$1"
    local destination="$2"

    if [[ -d "$source" ]]; then
        sudo cp -a "$source"/. "$destination"/
    else
        warning "Verzeichnis nicht gefunden: $source"
    fi
}

# ==============================================================
# Start
# ==============================================================

header

echo -e "${BLUE}AmiRock-OS ROM Operating System and Libraries${NC}"
echo -e "${GREY}Version V2.0 2020-2021 AmiRock-OS${NC}"
echo
echo "Installation / Update wird vorbereitet..."
echo

# ==============================================================
# Cache bereinigen
# ==============================================================

info "... Linux Cache bereinigen"

if [[ -d "$USER_HOME/.cache" ]]; then
    find "$USER_HOME/.cache" -mindepth 1 -maxdepth 1 \
        -exec rm -rf -- {} + 2>/dev/null || true
fi



# ==============================================================
# AmiRock .bashrc
# ==============================================================

header
info "... Bash-Konfiguration installieren"

if [[ -f "$AMIROCK/scripts/.bashrc" ]]; then
    cp -a "$AMIROCK/scripts/.bashrc" "$USER_HOME/.bashrc"
    sudo chown "$USER_NAME:$USER_NAME" "$USER_HOME/.bashrc"
fi

# ==============================================================
# data.pac
# ==============================================================

header
info "... AmiRock Datenpaket installieren"

if [[ -f "$DATA_PAC" ]]; then

    cd "$USER_HOME"

    unzip -o "$DATA_PAC"

    copy_dir_contents \
        "$USER_HOME/data/.config" \
        "$USER_HOME/.config"

    copy_dir_contents \
        "$USER_HOME/data/.local" \
        "$USER_HOME/.local"

    copy_dir_contents \
        "$USER_HOME/data/.worker" \
        "$USER_HOME/.worker"

    rm -rf "$USER_HOME/data"

else
    warning "data.pac nicht gefunden: $DATA_PAC"
fi

# ==============================================================
# AmiRock / Amiga installieren
# ==============================================================

if [[ ! -d "$AMIGA/data" ]]; then

    header

    info "... Amiga-System wird installiert"

    ensure_dir "$BACKUP"

    if [[ ! -f "$AMIGA_ZIP" ]]; then
        error_exit "Amiga.zip wurde nicht gefunden:
$AMIGA_ZIP"
    fi

    # Vorhandene Installation sichern
    if [[ -d "$AMIGA" ]]; then

        BACKUP_DATE="$(date '+%Y%m%d_%H%M%S')"

        info "Vorhandene Amiga-Installation sichern..."

        sudo mv \
            "$AMIGA" \
            "$BACKUP/Amiga_$BACKUP_DATE"
    fi

    ensure_dir "/opt"

    cd /opt

    sudo unzip -o "$AMIGA_ZIP"

    # ==========================================================
    # Amiga Fonts
    # ==========================================================

    ensure_dir "$FONT_DIR"

    copy_if_exists \
        "$AMIGA/data/AmigaTopaz.ttf" \
        "$FONT_DIR/"

    # ==========================================================
    # Amiberry Icons
    # ==========================================================

    copy_if_exists \
        "$AMIGA/data/amiberry.png" \
        "$APP_DIR/"

    copy_if_exists \
        "$AMIGA/data/amiberry_dev.png" \
        "$APP_DIR/"

    # ==========================================================
    # BCM Host Library
    # ==========================================================

    BCM_TARGET="/usr/lib/aarch64-linux-gnu/libbcm_host.so.0"
    BCM_SOURCE="/opt/vc/lib/libbcm_host.so"

    if [[ -e "$BCM_SOURCE" ]]; then

        if [[ ! -e "$BCM_TARGET" ]]; then

            sudo ln -s "$BCM_SOURCE" "$BCM_TARGET"

        fi

    else
        warning "BCM Host Library nicht gefunden: $BCM_SOURCE"
    fi

fi

# ==============================================================
# Backup-Verzeichnis
# ==============================================================

ensure_dir "$BACKUP"

# ==============================================================
# AmiRock Scripts
# ==============================================================

header
info "... AmiRock Scripts installieren"

if [[ -d "$AMIROCK/scripts" ]]; then

    sudo cp -a "$AMIROCK/scripts"/. /usr/local/bin/

fi

# ==============================================================
# Desktop-Dateien
# ==============================================================

info "... Desktop-Dateien installieren"

if [[ -d "$AMIROCK/config/Desktop" ]]; then

    sudo cp -a \
        "$AMIROCK/config/Desktop"/. \
        "$APP_DIR"/

fi

# ==============================================================
# Logos
# ==============================================================

info "... Logos installieren"

if [[ -d "$OPT_AMIROCK/config/Logo" ]]; then

    sudo cp -a \
        "$OPT_AMIROCK/config/Logo"/. \
        "$OPT_AMIROCK/config/"
fi

# Armbian Hintergrund
if [[ -f "$OPT_AMIROCK/config/Logo/boot.jpg" ]] &&
   [[ -d "/usr/share/backgrounds/armbian-lightdm" ]]; then

    sudo cp -a \
        "$OPT_AMIROCK/config/Logo/boot.jpg" \
        "/usr/share/backgrounds/armbian-lightdm/armbian03-Dre0x-Minum-dark-blurred-3840x2160.jpg"
fi

# ==============================================================
# System Update
# ==============================================================

header

info "AmiRock-OS Linux-System wird aktualisiert..."
echo

sudo apt-get update
sudo apt-get upgrade -y

# ==============================================================
# MegaAGS
# ==============================================================

if [[ -d "$BACKUP/MegaAGS/games/Amiga" ]]; then

    info "... MegaAGS Konfiguration"

    copy_if_exists \
        "$OPT_AMIROCK/Amiga/MegaAGS/MegaAGS.desktop" \
        "$APP_DIR/"

    ensure_dir "$AMIGA/Amiga/conf"

    copy_if_exists \
        "$OPT_AMIROCK/Amiga/MegaAGS/MegaAGS.uae" \
        "$AMIGA/Amiga/conf/"

fi

# ==============================================================
# Amiberry Development Icon
# ==============================================================

if [[ -f "$AMIGA/amiberry_dev.png" ]] &&
   [[ ! -f "$AMIGA/data/amiberry_dev.png" ]]; then

    sudo cp \
        "$AMIGA/amiberry_dev.png" \
        "$AMIGA/data/"

fi

if [[ -f "$AMIGA/data/amiberry_dev.png" ]]; then

    sudo cp \
        "$AMIGA/data/amiberry_dev.png" \
        "$APP_DIR/"

fi

# ==============================================================
# Amiberry Backups
# ==============================================================

header
info "... Amiberry Backups"

ensure_dir "$BACKUP"

for FILE in amiberry amiberry_old amiberry_dev; do

    if [[ -e "$AMIGA/$FILE" ]] &&
       [[ ! -e "$BACKUP/$FILE" ]]; then

        sudo cp -a \
            "$AMIGA/$FILE" \
            "$BACKUP/"

    fi

done

# ==============================================================
# Kickstart Verzeichnis
# ==============================================================

if [[ ! -f "$AMIGA/kickstarts/A1200.rom" ]]; then

    header

    warning "Kickstart-ROM A1200.rom wurde nicht gefunden."
    echo
    echo "Bitte beachten:"
    echo
    echo "Die Kickstart-ROMs und Workbench-Dateien"
    echo "unterliegen weiterhin dem Urheberrecht."
    echo
    echo "Verwende diese Dateien nur, wenn du"
    echo "die entsprechenden Rechte besitzt."
    echo

    ensure_dir "$AMIGA/dir/Work"
    ensure_dir "$AMIGA/dir/Software"
    ensure_dir "$AMIGA/Install"
    ensure_dir "$AMIGA/kickstarts"

fi

# ==============================================================
# .bashrc reparieren
# ==============================================================

header
info "... Benutzerkonfiguration reparieren"

if [[ -f "$AMIROCK/scripts/.bashrc" ]]; then

    cp -a \
        "$AMIROCK/scripts/.bashrc" \
        "$USER_HOME/.bashrc"

    sudo chown \
        "$USER_NAME:$USER_NAME" \
        "$USER_HOME/.bashrc"

fi



# ==============================================================
# Armbian / Dconf
# ==============================================================

if [[ -d "/usr/lib/armbian" ]]; then

    header
    info "... Armbian erkannt"

    ensure_dir "$USER_HOME/Videos"
    ensure_dir "$USER_HOME/Movies"

    # Dconf
    if [[ -f "$OPT_AMIROCK/config/user" ]]; then

        ensure_dir "$USER_HOME/.config/dconf"

        cp \
            "$OPT_AMIROCK/config/user" \
            "$USER_HOME/.config/dconf/"

        chown -R \
            "$USER_NAME:$USER_NAME" \
            "$USER_HOME/.config/dconf"

    fi

fi

# ==============================================================
# Unnötige Dateien entfernen
# ==============================================================

header
info "... unnötige Dateien entfernen"

if [[ -d /opt ]]; then

    sudo find /opt \
        -type f \
        \( \
            -name '._*' \
            -o -name '.DS_*' \
            -o -name '_UAEFSDB.___' \
        \) \
        -delete

fi

# Alte Amiberry Konfigurationen entfernen
sudo rm -f \
    "$AMIGA/conf/amiberry.conf" \
    "$AMIGA/conf/amiberry-osx.conf"

# ==============================================================
# Alte Verzeichnisse entfernen
# ==============================================================

header
info "... alte AmiRock Verzeichnisse entfernen"

for DIR in \
    "$USER_HOME/AMIGAOSLINUX" \
    "$USER_HOME/AmiRock" \
    "$USER_HOME/fan-control-rock5b" \
    "$USER_HOME/Videos" \
    "$USER_HOME/Bilder"
do

    # AmiRock selbst NICHT entfernen!
    if [[ "$DIR" == "$AMIROCK" ]]; then
        continue
    fi

    if [[ -d "$DIR" ]]; then
        rm -rf "$DIR"
    fi

done

# ==============================================================
# Desktop / deutsche Verzeichnisse
# ==============================================================

if [[ -d "$USER_HOME/Schreibtisch" ]]; then

    rm -rf "$USER_HOME/Schreibtisch"

    rm -f \
        "$USER_HOME/.config/user-dirs.dirs"

    ensure_dir "$USER_HOME/Desktop"

fi

# ==============================================================
# Amiberry Dev Icon
# ==============================================================

if [[ -f "$OPT_AMIROCK/Amiga/amiberry_dev.png" ]]; then

    ensure_dir "$AMIGA/data"

    if [[ ! -f "$AMIGA/data/amiberry_dev.png" ]]; then

        sudo cp \
            "$OPT_AMIROCK/Amiga/amiberry_dev.png" \
            "$AMIGA/data/"

    fi

fi

# ==============================================================
# OLED
# ==============================================================

header
info "... OLED Unterstützung"

ensure_dir "/opt/OLED"
ensure_dir "/opt/OLED/images"

if [[ -d "$OPT_AMIROCK/OLED" ]]; then

    sudo cp -a \
        "$OPT_AMIROCK/OLED"/. \
        "/opt/OLED/"

fi

if [[ -d "/opt/OLED/fonts" ]]; then

    sudo cp -a \
        /opt/OLED/fonts/. \
        /usr/share/fonts/truetype/

fi


# ==============================================================
# RetroPie
# ==============================================================

if [[ -d "/opt/retropie/configs/all/retroarch" ]]; then

    header
    info "... RetroPie Verknüpfung"

    ensure_dir "$USER_HOME/.config"

    if [[ -L "$USER_HOME/.config/retroarch" ]] ||
       [[ -d "$USER_HOME/.config/retroarch" ]]; then

        rm -rf "$USER_HOME/.config/retroarch"

    fi

    ln -s \
        "/opt/retropie/configs/all/retroarch" \
        "$USER_HOME/.config/retroarch"

    chown -h \
        "$USER_NAME:$USER_NAME" \
        "$USER_HOME/.config/retroarch"

fi

# ==============================================================
# Backup-Konfiguration zurückspielen
# ==============================================================

if [[ -d "$BACKUP/.config" ]]; then

    info "... Backup-Konfiguration wiederherstellen"

    sudo cp -a \
        "$BACKUP/.config"/. \
        "$USER_HOME/.config/"

fi

# ==============================================================
# Besitzer korrigieren
# ==============================================================

header
info "... Dateirechte korrigieren"

# WICHTIG:
# Nicht mehr chmod -R 777 verwenden!

sudo chown -R \
    "$USER_NAME:$USER_NAME" \
    "$USER_HOME"

# Ausführbare AmiRock Scripts
if [[ -d "/usr/local/bin" ]]; then

    sudo find /usr/local/bin \
        -maxdepth 1 \
        -type f \
        -name 'AmiRock*' \
        -exec chmod 755 {} \;

fi

# Desktop-Dateien
sudo find "$APP_DIR" \
    -maxdepth 1 \
    -type f \
    -name '*.desktop' \
    -exec chmod 644 {} \;

# ==============================================================
# Abschluss
# ==============================================================

header

echo -e "${BLUE}AmiRock-OS ROM Operating System and Libraries${NC}"
echo -e "${GREY}Version V2.0 2020-2021 AmiRock-OS${NC}"
echo
echo "No Rights Reserved."
echo
echo "Type 'd' to boot into AmiRock Workbench"
echo
echo "  ( u ) AmiRock-OS Update"
echo "  ( m ) AmiRock-OS Config"
echo "  ( c ) Armbian-Config"
echo "  ( s ) Shutdown"
echo
echo -e "${GREEN}... AmiRock-OS Setup erfolgreich beendet :-)${NC}"
echo

success "Installation / Update abgeschlossen."

exit 0

