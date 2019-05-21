#!/bin/sh
sudo apt-get update && sudo apt-get -y upgrade
apt-get install libleveldb-dev -y sqlite3 -y libsqlite3-dev -y libunwind8-dev -y
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
DEBIAN_FRONTEND=noninteractive dpkg -i packages-microsoft-prod.deb
apt-get install apt-transport-https -y
apt-get update
apt-get install dotnet-sdk-2.1 -y
apt-get install unzip -y
wget https://github.com/neo-project/neo-cli/releases/download/v2.10.2/neo-cli-linux-x64.zip
unzip neo-cli-linux-x64.zip
cd neo-cli
wget https://github.com/neo-project/neo-plugins/releases/download/v2.10.2/ImportBlocks.zip
unzip ImportBlocks.zip
rm ImportBlocks.zip
wget https://github.com/neo-project/neo-plugins/releases/download/v2.10.2/ApplicationLogs.zip
unzip ApplicationLogs.zip
rm ApplicationLogs.zip
wget https://github.com/neo-project/neo-plugins/releases/download/v2.10.2/RpcNep5Tracker.zip
unzip RpcNep5Tracker.zip
rm RpcNep5Tracker.zip
wget https://github.com/neo-project/neo-plugins/releases/download/v2.10.2/RpcSystemAssetTracker.zip
unzip RpcSystemAssetTracker.zip
rm RpcSystemAssetTracker.zip
wget https://github.com/O3Labs/o3-explorer-plugins/releases/download/2.10.2/ExplorerRPC.zip
unzip ExplorerRPC.zip
rm ExplorerRPC.zip
#etc.