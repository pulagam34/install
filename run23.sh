#!/bin/bash
#
# Create directories for nodes
mkdir -p /root/node-1
mkdir -p /root/node-2
#
# Clone repositories for node 1 and node 2
git clone https://github.com/pulagam34/23A.git /root/node-1
git clone https://github.com/pulagam34/23B.git /root/node-2
#
# Install dependencies
apt-get install -y libgomp1
#
# Install Gaianet on node-1 and node-2
curl -sSfL 'https://raw.githubusercontent.com/GaiaNet-AI/gaianet-node/main/install.sh' | bash -s -- --base /root/node-1
curl -sSfL 'https://raw.githubusercontent.com/GaiaNet-AI/gaianet-node/main/install.sh' | bash -s -- --base /root/node-2
#
# Set the environment path for node-1
export PATH=$PATH:/root/node-1/bin
/root/node-1/bin/gaianet init --config https://raw.githubusercontent.com/GaiaNet-AI/node-configs/main/qwen2-0.5b-instruct/config.json --base /root/node-1
#
# Set the environment path for node-2
export PATH=$PATH:/root/node-2/bin
/root/node-1/bin/gaianet init --config https://raw.githubusercontent.com/GaiaNet-AI/node-configs/main/qwen2-0.5b-instruct/config.json --base /root/node-2
#
# Configure the ports for both nodes
/root/node-1/bin/gaianet config --port 8081 --base /root/node-1
/root/node-1/bin/gaianet config --port 8082 --base /root/node-2
#
# Modify the frpc.toml files for both nodes
sed -i 's/localPort = 8080/localPort = 8081/' /root/node-1/gaia-frp/frpc.toml
sed -i 's/localPort = 8080/localPort = 8082/' /root/node-2/gaia-frp/frpc.toml
#
# Start the nodes
/root/node-1/bin/gaianet start --base /root/node-1
/root/node-1/bin/gaianet start --base /root/node-2
#
# Show the node info
/root/node-1/bin/gaianet info --base /root/node-1
/root/node-1/bin/gaianet info --base /root/node-2
