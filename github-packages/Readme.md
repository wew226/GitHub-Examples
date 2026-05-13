export GH_USERNAME='wew226'
export GH_TOKEN=''
export GH_IMAGE_NAME='hello-world'
export GH_VER='1.0.0'

echo $GH_TOKEN | docker login ghcr.io -u $GH_USERNAME --password-stdin

docker tag $GH_IMAGE_NAME:latest ghcr.io/$GH_USERNAME/$GH_IMAGE_NAME:$GH_VER

docker push ghcr.io/$GH_USERNAME/$GH_IMAGE_NAME:$GH_VER

LABEL org.opencontainers.image.source https://github.com/OWNER/REPO
