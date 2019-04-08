#!/bin/sh
sudo apt-get update && sudo apt-get -y upgrade
apt-get install libleveldb-dev -y sqlite3 -y libsqlite3-dev -y libunwind8-dev -y unzip -y
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
DEBIAN_FRONTEND=noninteractive dpkg -i packages-microsoft-prod.deb
apt-get install apt-transport-https -y
apt-get update
apt-get install dotnet-sdk-2.1 -y
wget https://github.com/neo-project/neo-cli/releases/download/v2.10.1/neo-cli-linux-x64.zip
unzip neo-cli-linux-x64.zip
cd neo-cli
wget wget https://github.com/O3Labs/neo-cli-resource/raw/master/Plugins/neo-cli-2.10.1/ImportBlocks.zip
unzip ImportBlocks.zip
rm ImportBlocks.zip
wget https://github.com/O3Labs/neo-cli-resource/raw/master/Plugins/neo-cli-2.10.1/ApplicationLogs.zip
unzip ApplicationLogs.zip
rm ApplicationLogs.zip
wget https://github.com/O3Labs/neo-cli-resource/raw/master/Plugins/neo-cli-2.10.1/RpcNep5Tracker.zip
unzip RpcNep5Tracker.zip
rm RpcNep5Tracker.zip
wget https://github.com/O3Labs/neo-cli-resource/raw/master/Plugins/neo-cli-2.10.1/RpcSystemAssetTracker.zip
unzip RpcSystemAssetTracker.zip
rm RpcSystemAssetTracker.zip
wget https://github.com/O3Labs/neo-cli-resource/raw/master/Plugins/neo-cli-2.10.1/TransactionLogs.zip
unzip TransactionLogs.zip
rm TransactionLogs.zip
#etc.