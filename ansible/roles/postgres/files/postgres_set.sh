#!/usr/bin/env bash

#echo "Creating the file repository configuration"
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

#echo "Importing the repository signing key"
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

#echo "Updating the package lists"
sudo apt-get update

#echo "Installing the latest version of PostgreSQL"
sudo apt-get -y install postgresql

#echo "Creating a role"
sudo su - postgres -c "createuser daniel"

#echo "Creating password for the user"
sudo su - postgres -c "alter user daniel password 'daniel123'"

#echo "Creating a userfor postgres"
sudo adduser daniel

#echo "Creating a database"
sudo su - postgres -c "createdb danieldb"
