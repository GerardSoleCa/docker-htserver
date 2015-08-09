#!/bin/bash

echo "Building transmission"
cd docker-transmission
./build.sh > /dev/null
cd ..

if grep "@username@" docker-compose.yml > /dev/null
then
	echo "Configuring Transmission (Torrent)"
	echo "Enter your username, followed by [ENTER]:"
	read username
	echo "Enter your password, followed by [ENTER]:"
	read password

	sed -i -e "s|@username@|$username|" docker-compose.yml
	sed -i -e "s|@password@|$password|" docker-compose.yml
else
	echo "Keeping your username and password"
fi

echo "Starting HomeTheater Server"
docker-compose up -d
echo ""
echo ""
echo "Transmission on http://localhost:9091"
echo "Plex on http://localhost:3240"
exit 0
