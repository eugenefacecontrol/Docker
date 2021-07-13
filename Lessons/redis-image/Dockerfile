# Use an existing docker image as a base
# docker run -it alpine sh
FROM alpine

# Download and install a dependency
RUN apk add --update redis
# RUN apk add --update gcc 

# Tell the image what to do when it starts as a container
# docker commit -c "CMD 'redis-server'" CONTAINERID
CMD ["redis-server"]