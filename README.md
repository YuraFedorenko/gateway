#build docker image with: 
mvn clean package
docker build -t gateway:1.0 .

#start container with: 
docker run -dit --name gateway -p 8080:8080 --env secret=my-real-secret --env BACKEND_URL=http://suggestions:8080/ --network kuber_net gateway:1.0