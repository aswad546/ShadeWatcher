# ShadeWatcher Parser Vagrant Setup

This directory contains the Vagrant file for automatically setting up the ShadeWatcher Parser.

## Usage

To use this Vagrant file, follow the instructions below:

1. Make sure you have [Vagrant](https://www.vagrantup.com/) installed on your system.
2. Clone this repository to your local machine.
3. Navigate to the repository directory.
4. Run the `vagrant up` command in your terminal.

The `vagrant up` command will start the virtual machine and automatically set up the ShadeWatcher Parser.

## Errors

In case you encounter the following error: `./driverdar: error while loading shared libraries: libconfig++.so.11:`,
Perform the following steps in the `ShadeWatcher/lib/libconfig-1.7.2` directory:

1. Run the command `sudo ./configure --prefix=$LIB_INSTALL_PATH`.
2. Run the command `sudo make -j8`.
3. Run the command `sudo make install`.
