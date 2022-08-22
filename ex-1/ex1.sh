#!/bin/sh
echo 'pull' 
docker pull itaimalek/rickandmorty:latest   
echo 'run' 
docker run -itd --name itaimalek/rickandmorty -e RUN="TRUE" -p 8000:8080 itaimalek/rickandmorty:latest
echo 'stop' 
docker stop itaimalek/rickandmorty
echo 'delete'
docker rm itaimalek/rickandmorty
echo 're-tag'
docker tag itaimalek/rickandmorty:latest chavifisher/week1:itaimalek/rickandmorty
echo 'push'
docker push chavifisher/week1:itaimalek/rickandmorty