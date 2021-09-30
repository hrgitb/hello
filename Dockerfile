# the base container
FROM golang
# add the go code
ADD . /hello
# change directory
WORKDIR /hello
# run the go code
CMD go run hello.go
# expose the web server port
EXPOSE 8080
