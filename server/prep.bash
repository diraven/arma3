#!/bin/bash
set -e

# Check if wget and unzip are installed
if ! command -v wget &> /dev/null || ! command -v unzip &> /dev/null; then
    echo "wget and unzip are required but not installed. Please install them and try again."
    exit 1
fi


# Vars.
if [ -z "$1" ]; then
    echo "Mission name must provided."
    exit 1
fi
MISSION_NAME=$1
if [ -z "$2" ]; then
    echo "Max players must be set."
    exit 1
fi
MAX_PLAYERS=$2
ADMIN=76561197999599845

# Files.
MAIN_CFG="configs/main.cfg"
DOCKER_COMPOSE="docker-compose.yml"

# Prepare working directory.
WORKDIR="/tmp/arma3/"
mkdir -p $WORKDIR
cd $WORKDIR || exit 1

# Download missions.
if [ ! -d "missions" ]; then
    wget -nc -O master.zip https://github.com/diraven/arma3/archive/refs/heads/master.zip || true
    unzip master.zip
    mv arma3-master/mpmissions missions/
    rm -rf arma3-master master.zip
fi

# Docker-compose.
wget -nc -O $DOCKER_COMPOSE https://raw.githubusercontent.com/BrettMayson/Arma3Server/master/$DOCKER_COMPOSE || true
sed -i '/    build: ./d' $DOCKER_COMPOSE
if ! grep -xq "      - './steam:/root/Steam'" $DOCKER_COMPOSE
then
    sed -i '/    volumes:/a\      - '\''./steam:/root/Steam'\''' $DOCKER_COMPOSE
fi

# Config.
mkdir -p configs
wget -nc -O $MAIN_CFG https://raw.githubusercontent.com/BrettMayson/Arma3Server/master/$MAIN_CFG && \
    sed -i "s|hostname.*|hostname = \"KRUK Dedicated Ephemeral\"|g" $MAIN_CFG
# Provide password.
if ! grep -q "password" $MAIN_CFG
then
    echo "password = \"$(openssl rand -base64 10)\";" >> $MAIN_CFG
fi
# Provide admins.
if ! grep -q "admins" $MAIN_CFG
then
    echo "admins[] = {\"$ADMIN\"}" >> $MAIN_CFG
fi
# Update hostname.
sed -i "s|hostname.*|hostname = \"DiRaven's Dedicated (Ephemeral)\";|g" $MAIN_CFG
# Update max players.
sed -i "s|maxPlayers.*|maxPlayers = $MAX_PLAYERS;|g" $MAIN_CFG


# .env
wget -nc -O .env https://raw.githubusercontent.com/BrettMayson/Arma3Server/master/.env.example || true
# Set preset if exists.
if wget --spider "https://raw.githubusercontent.com/diraven/arma3/master/mpmissions/$MISSION_NAME/preset.html" 2>/dev/null; then
    sed -i "s|MODS_PRESET=.*|MODS_PRESET=https://raw.githubusercontent.com/diraven/arma3/master/mpmissions/$MISSION_NAME/preset.html|g" .env
else
    sed -i "s|MODS_PRESET=.*|MODS_PRESET=|g" .env
fi

# Done!
echo "Server ready! Next:"
echo ""
echo "Put ur steam login and password in .env file."
echo 'docker compose run --rm arma3 bash -c "/steamcmd/steamcmd.sh +login"'
echo 'docker compose up -d && docker compose logs --follow'
