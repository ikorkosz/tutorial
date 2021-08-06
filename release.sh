set -ex

#docker hub username
USERNAME=ikorkosz
#image
IMAGE=apline


version='cat VERSION'
echo "version: $version"

./build.sh

#tag
git add -A
git commit -m "version: $version"
git tag -a "$version" -m "version: $version"
git push
git push --tags

docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version

#push to docker hub
docker push $USERNAME/$IMAGE:latest
docker push $USERNAME/$IMAGE:version
