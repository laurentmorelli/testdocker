#Construire une image docker

docker build -t ensiie-test-image -f Dockerfile .

#executer une image

docker run ensiie-test-image

#executer via docker composer

docker-compose -f docker-compose.yml up -d

#se connecter dans l'image

docker exec -it ensiie-test-image bash