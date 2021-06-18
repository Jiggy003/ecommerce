# ecommerce
An ecommerce project with python and Docker
The app folder contains two python files:
1. The api python file which holds the endpoints used
2. The customer python file which contains the connections and classes to which the api endpoints are bound
The docker file builds an image which runs the api on route 0.0.0.0:9000
The docker-compose file creates a new database and links it to the image created by the docker file(stored in docker-hub).
it then runs the process on port 9000
