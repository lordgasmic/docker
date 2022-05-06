FROM alpine:3.15.4
RUN apk add --no-cache openjdk14 openssh-client
RUN mkdir -p ~/.ssh
RUN ssh-keyscan -t rsa 172.16.0.51 >> ~/.ssh/known_hosts
