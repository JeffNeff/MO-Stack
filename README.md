# Mineonlium Solo Node Quickstart


## Setup and run
* Install VSCode.
* Install Docker Desktop.
* Create new Dev Env. using this repo.
* Open the Env. in VScode.
* Execute the following:
```
ADDRESS=0x5bbfa5724260Cb175cB39b24802A04c3bfe72eb3 ./run.sh
```

## Expose to the world
* Register for an account on Ngrok -> https://dashboard.ngrok.com/get-started/setup
* Install and setup Ngrok 
* Run this command to expose your Node's stratum port:
```
ngrok tcp 50001
```
* Point your miner to the URL **AND** Port that Ngrok returns 

... profit?
