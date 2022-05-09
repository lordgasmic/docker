# lordgasmic/jre-ssh:1.0.1
# docker build --network=host -t lordgasmic/jre-ssh:version .
FROM alpine:3.15.4
RUN mkdir -p ~/.ssh
RUN apk add --no-cache openjdk14-jre-headless openssh-client
RUN ssh-keyscan -t rsa 172.16.0.51 >> ~/.ssh/known_hosts
RUN ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
