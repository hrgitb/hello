# hello

# What is this?
This is a simple go web server.


## How to run it
You can run it with `go run hello.go`.

You can also run it with docker:
```
docker build -t x .
docker run -it -p 8080:8080 x
```
# Test it
Now you can test it with your browser or curl
```
curl localhost:8080
```