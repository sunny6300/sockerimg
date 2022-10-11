docker build -t sockerimg .

docker run -t -d sockerimg:latest

docker exec -it <container_id> sh -c "<>command>"
