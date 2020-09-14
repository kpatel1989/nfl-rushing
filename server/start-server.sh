echo 'Build server'
docker build -t node-server .


echo 'Starting server...'
docker run --name the-score-server --detach -p 4000:3000 node-server &