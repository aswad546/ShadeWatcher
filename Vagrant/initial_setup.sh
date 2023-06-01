#!/bin/sh

echo "Setting up virtual machine "

sudo apt-get update -y 
sudo apt install python3-pip -y 
sudo apt-get install git -y 
pip3 install gdown 

git clone https://github.com/aswad546/ShadeWatcher.git 
cd ShadeWatcher/lib/
LIB_INSTALL_PATH=$PWD

#neo 4j
sudo add-apt-repository ppa:cleishm/neo4j -y 
sudo apt-get update -y 
sudo apt-get install libssl-dev neo4j-client libneo4j-client-dev -y 

sudo apt-get install libjsoncpp-dev -y
sudo apt install build-essential -y 

sudo apt-get install  libpq-dev pkg-config libudev-dev libconfig++-dev libconfig-dev -y

#postgres
sudo apt-get install postgresql postgresql-contrib libpqxx-4.0v5 libpqxx-dev -y

# libconfig
wget https://hyperrealm.github.io/libconfig/dist/libconfig-1.7.2.tar.gz
sudo tar xzvf libconfig-1.7.2.tar.gz
cd /home/vagrant/ShadeWatcher/lib/libconfig-1.7.2/
sudo ./configure --prefix=$LIB_INSTALL_PATH
sudo make -j8
sudo make install
cd ../

#compilation
echo "Compiling ShadeWatcher"
cd /home/vagrant/ShadeWatcher/parse/

sudo sed -i '42d' Makefile
sudo sed -i '42i export OPT = -std=c++14' Makefile

sudo make
sudo sed -i '42d' Makefile
sudo sed -i '42i export OPT = -std=c++17' Makefile

sudo make
sudo sed -i '42d' Makefile
sudo sed -i '42i export OPT = -std=c++14' Makefile

sudo make


/home/vagrant/ShadeWatcher/parse/driverdar
