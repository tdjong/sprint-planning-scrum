docker stop scrummy
docker rm scrummy
docker run \
    -d -p 8080:8080 \
    --name scrummy \
    tdjong/scrummy-web-app
