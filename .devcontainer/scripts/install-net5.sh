## to run: bash ./.devcontainer/scripts/install-net5.sh
## prepare for scripted install
# download sh
wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
# grant permission
chmod +x ./dotnet-install.sh
# install specific major version
./dotnet-install.sh --channel 5.0
