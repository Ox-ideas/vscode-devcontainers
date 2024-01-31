# bash ./.devcontainer/scripts/fix-wintounix.sh
cd .devcontainer/scripts
sed -i -e 's/\r$//' *.sh