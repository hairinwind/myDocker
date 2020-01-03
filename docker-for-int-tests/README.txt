I have used the mvn plugin to create the docker images for each service
You need to run mvn clean install and it creates the image for each one of them 


To start MSSQL docker container and create the empty DECM database run:
docker-compose -f compose-start-db.yml up

To start the DB migration tool service that I've just created run
docker-compose -f compose-init-db.yml up

You need to put DB version files in the folder docker/db/versions and when the docker container is created
 it is added as a volume to it

To start the DECM services run
docker-compose -f compose-start-svcs.yml up

I have only created the file-processor-aft and file-processor-bills 
The accumulator-0 needs the database with all the tables to work because it does the polling 

In the folder docker/config there's all the configuration files for the services. 
If you check the file-processor-aft for example it has the db connection url and username and password updated 
 for the docker container.