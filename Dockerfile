FROM ubuntu:22.04

WORKDIR .

COPY start.sh /start.sh

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -q -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends git gcc g++ gcc-12 g++-12 libopus-dev zlib1g-dev libssl-dev libsodium-dev pkg-config cmake gdb php-cli openssh-server ssh sudo make graphviz doxygen curl wget gnupg gnupg-agent vim gh ca-certificates openssl zip
RUN addgroup --system build
RUN adduser --ingroup build build
RUN echo 'build  ALL=(ALL) /bin/su' >>  /etc/sudoers

ENTRYPOINT /bin/sh /start.sh
