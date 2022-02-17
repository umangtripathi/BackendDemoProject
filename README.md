# BackendDemoProject

README FOR RUNNING COMPOSE FILE:

For running the compose execute the below command:

sudo docker-compose -f docker_compose.yml up

for stopping the containers

sudo docker compose -f docker_compose.yml down

I have not made these environment specific since I needed to find how main container is calling config files, so that I can pass
environment specific json(test.json,development.json,production.json).

The current Dockerfile uses default.json for config.

I have changed the hostname such that the container connect to each other inside a docker network.

After running the compose file .

kindly connect to mysql db using dbeaver(you can use anything you want)
and establish the connect to localhost:3306
using username=root and password=password.

after connecting please run the following commands for creating db in mysql and user table:

create database backend_test

use backend_test

create table users(
   user_id INT NOT NULL AUTO_INCREMENT ,
   first_name VARCHAR(100) NOT NULL,
   last_name VARCHAR(40) NOT NULL,
   project_id INT NOT NULL,
   is_active INT NOT NULL,
   PRIMARY KEY ( user_id )
);

Also create backend_demo db using mongoexpress ui

You can find the uri at localhost:8081
