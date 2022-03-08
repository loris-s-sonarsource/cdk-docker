# cdk-docker

```bash
# Build it
sudo docker build \
    -t cdk-docker \
    https://github.com/loris-s-sonarsource/cdk-docker.git#main

# Run it
sudo docker run -it --rm \
    -v "$(pwd):/home/cdk-user/data" \
    -v ~/.aws:/home/cdk-user/.aws \
    -w /home/cdk-user/data \
     cdk-docker \
     --version
```
