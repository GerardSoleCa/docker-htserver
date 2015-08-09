# Home Theater Server
Easy way to build a Transmission (with web interface) and Plex server within minutes!

## Requirements
You sould need a [Docker](http://docker.com) capable computer/server. Normally with a Linux distribution should be done, otherways look to alternatives in Windows or Mac ([boot2docker](http://boot2docker.io/) for example). Also you should install [Docker-Compose](https://docs.docker.com/compose/install/) to bootstrap quickly without worring about docker commands.

## First...
Clone this repository

```bash
$ git clone https://github.com/GerardSoleCa/docker-htserver.git
```

## Second... 
Start the whole thing! It will prompt your for your desired username and password for Transmission website. Remember that once its setup, although new passwords are asked, the first one will be stored in *docker-compose.yml* file

```bash
$ chmod +x 
$ ./start.sh
```

## Third...
Configure Plex. Here it's up to you to search in internet how to connect to the server, configure accounts, libraries etc. Good luck! :D

