# freeswitchTest
Debian stretch based container shipped with freeswitch running.


# To build the docker image
sudo docker build -t freeswitchapp:v1 -f FreeSwitchDockerfile .

# To run the container
sudo docker run  --network=host --name plivoapp <image_id>
