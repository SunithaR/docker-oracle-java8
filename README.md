![alt text](http://www.3pillarglobal.com/wp-content/uploads/2015/10/docker_logo_180x110.jpg "Docker")
# oracle-java8
A container that adds Java8 on top of container wnameless/oracle-xe-11g (Oracle Express 11g R2 on Ubuntu 16.04 LTS).

### Build
```sh
docker build -t oracle-java8 .
```

### Run
```sh
docker run -it --rm oracle-java8 
```
Run with ports 22 and 1521 mapped and opened
```sh
docker run -it --rm -d -p 49160:22 -p 49161:1521 oracle-java8 
```

### Usage
This container can be used by anyone who needs Ubuntu, Oracle and Java8 as a base image







