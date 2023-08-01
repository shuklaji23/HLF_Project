PROJECT_PATH=/home/ayush.shukla@npci.org.in/project3
cd
cd $PROJECT_PATH/artifacts/channel/create-certificate-with-ca

docker rm -f $(docker ps -aq)
docker-compose up -d

docker ps 

./create-certificate-with-ca.sh

cd ../
./create-artifacts.sh

cd ../
docker-compose up -d

cd ../Explorer
docker-compose up -d

cd ../
./createChannel.sh
./deployChaincode.sh
./deployDocumentCC.sh

cd api-2.0
npm install

cd config
./generate-ccp.sh

cd ../
node app.js