echo "HEHEHEHEHEHEHEHEHEHHE"

sudo sed -i '42d' Makefile
sudo sed -i '42i export OPT = -std=c++14' Makefile

sudo make
sudo sed -i '42d' Makefile
sudo sed -i '42i export OPT = -std=c++17' Makefile

sudo make
sudo sed -i '42d' Makefile
sudo sed -i '42i export OPT = -std=c++14' Makefile

sudo make
