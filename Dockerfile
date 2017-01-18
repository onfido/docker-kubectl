FROM alpine:3.4

RUN apk add --update curl

# Kubernetes control cli 1.4.4
RUN cd /usr/local/bin \
    && curl -O https://storage.googleapis.com/kubernetes-release/release/v1.5.2/bin/linux/amd64/kubectl \
    && chmod 755 /usr/local/bin/kubectl

ENTRYPOINT ["kubectl"]

