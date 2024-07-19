# build
docker build --tag benchmarl:v1.0 -f Dockerfile .

# run
docker run --gpus all -v "/home/$USER/xCode/BenchMARL:/BenchMARL" -itd --name benchmarl_v1_0 benchmarl:v1.0 


# exec docker
docker exec -it benchmarl_v1_0 /bin/bash 
