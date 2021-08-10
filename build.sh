VERSION="$(date +"%Y_%m_%d_%H_%S")"
#docker hub
USERNAME=ikorkosz
#image name
IMAGE=alpine
DATA=$(date)

docker build -t $USERNAME/$IMAGE:$VERSION .

docker push $USERNAME/$IMAGE:$VERSION

