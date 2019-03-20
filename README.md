# CODEPSD

###This project is able to be set up via Vagrant or Docker (Docker recommended).


##VAGRANT SETUP

[![Vagrant](http://4.bp.blogspot.com/-gjnPaZjlBx8/U6k69kXuz9I/AAAAAAAAI54/l1zRkXewj7k/s1600/vagrant_logo.png)](https://www.vagrantup.com/)

### 1. add entry to HOSTS:
```
192.168.50.6 local.codepsd.si
192.168.50.6 pma.codepsd.si
```
### 2. clone this repo.

### 3. navigate to repo and do "make codepsd" command.

### 4. start it all up with "vagrant up" command.

### 5. your page is on 'local.codepsd.si'.

### 6. You are ready to develop!


##DOCKER SETUP

[![Docker](https://www.docker.com/sites/default/files/social/docker_facebook_share.png)](https://www.docker.com/)

### 1. add entry to HOSTS:
```
 127.0.0.1 docker.codepsd.local
```
### 2. clone this repo.

### 3. navigate to repo and do "make codepsd" command.

### 4. start it all up with "make start" command.

### 5. your page is on 'docker.codepsd.local'.

### 6. You are ready to develop!