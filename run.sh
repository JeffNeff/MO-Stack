sudo apt-get update
sudo apt-get install default-jdk unzip -y
wget https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.7.4/besu-22.7.4.zip
unzip besu-22.7.4.zip
cd besu-22.7.4/bin
export PATH=$PWD:$PATH
cd ../../
mkdir EVMProtocol
cd EVMProtocol
echo '{
    "config": {
    "chainId": 54321,
    "homesteadBlock": 1,
    "eip150Block": 2,
    "eip150Hash": "0x0000000000000000000000000000000000000000000000000000000000000000",
    "eip155Block": 2,
    "eip158Block": 3,
    "byzantiumBlock": 4,
    "constantinopleBlock": 5,
    "petersburgBlock": 6,
    "blockreward": "20000000000000000",
    "berlinBlock": 7,
    "muirglacierblock": 8,
    "ethash": {
        "difficulty": 10
  }
    },
    "nonce": "0x0000000000000042",
    "timestamp": "0x632AB901",
    "extraData": "0x0000000000000000000000000000000000000000000000000000000000000000",
    "gasLimit": "0x5B8D80", 
    "difficulty": "0xA",
    "mixHash": "0x63746963616c2062797a616e74696e65206661756c7420746f6c6572616e6365",
    "coinbase": "0x0000000000000000000000000000000000000000",
    "number": "0x0",
    "gasUsed": "0x0",
    "parentHash": "0x0000000000000000000000000000000000000000000000000000000000000000"
}' > genesis.json

nohup besu --data-path=data --bootnodes=enode://0c53a65b8b98c95698e05b62c97c180b3b6febae1d7b516e7047f7c36c373e0bbed38c2c83b2b9a264a375886fb2c6a44e26938b1bee4c8e23e788938b49e00a@134.215.244.171:60606 --genesis-file=genesis.json --miner-stratum-enabled --miner-stratum-host=0.0.0.0 --miner-stratum-port=50001 --miner-enabled=true --miner-coinbase=$ADDRESS --rpc-http-host=0.0.0.0  --rpc-http-enabled=true  &
