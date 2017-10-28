docker build -t mgkrish19/cdsw-base-with-maven-graphviz-gnuplot-cuda . 



export T=$(date +%I_%M_%S)
echo "current time is: ".$T



docker image ls

docker run -it -d --name container_$T mgkrish19/cdsw-base-with-maven-graphviz-gnuplot

docker container ls

read -p "Container-ID to connect to : " C_ID

echo $C_ID 

docker exec -i -t $C_ID /bin/bash

docker container stop $C_ID



