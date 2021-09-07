# Container image that runs your code
FROM alpine

RUN apk --update add tar curl bash g++ make openssl-dev

# Install Litmus
ADD  http://www.webdav.org/neon/litmus/litmus-0.13.tar.gz /tmp/litmus/litmus.tar

RUN tar -xvf /tmp/litmus/litmus.tar && \
    rm /tmp/litmus/litmus.tar && \
    mv litmus-0.13 litmus && \
    cd /litmus && \
    ./configure --with-ssl && \
    make install


# Copies your code file from your action repository to the filesystem path `/` of the container
#COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/litmus","$(URL)","$(WEBDAV_USER)","$(WEBDAV_PASSWORD)"]
