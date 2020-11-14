git clone https://github.com/reberhardt7/cplayground.git
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install apt-transport-https ca-certificates curl software-properties-common
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install docker-ce
sudo apt-get install -y build-essential make
cd cplayground/
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
sudo docker build -t cplayground src/server/docker-image/
sudo apt install node-typescript
yarn install
yarn run build
sudo usermod -aG docker $USER
export DB_URL="mysql://username:password@localhost"
node src/server/migrations.js up
yarn run serve
