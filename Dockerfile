# use multi layer image

# small base image to build the program
FROM golang:alpine as builder
WORKDIR /build 
# use copy instead of add
COPY . /build/
RUN GOOS=linux CGO_ENABLED=0 go build -a -installsuffix cgo -ldflags '-extldflags "-static"' -o hello .

# tiny image to run the compiled program binary
FROM scratch
COPY --from=builder /build/hello /app/
WORKDIR /app
CMD ["./hello"]