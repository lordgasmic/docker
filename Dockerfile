# lordgasmic/jre-ssh:1.0.0
FROM alpine:3.15.4
RUN mkdir -p ~/.ssh
RUN apk add --no-cache openjdk14-jre-headless openssh-client
RUN ssh-keyscan -t rsa 172.16.0.51 >> ~/.ssh/known_hosts
