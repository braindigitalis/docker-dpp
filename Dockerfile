FROM ubuntu:22.04

WORKDIR .

COPY start.sh /start.sh
# Install composer within container
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -q -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y --no-install-recommends git gcc g++ gcc-12 g++-12 libopus-dev zlib1g-dev libssl-dev libsodium-dev pkg-config cmake gdb php-cli openssh-server ssh sudo make graphviz doxygen curl wget
RUN addgroup --system build
RUN adduser --ingroup build build
RUN chown --recursive build:build /home/build/
RUN echo 'build  ALL=(ALL) /bin/su' >>  /etc/sudoers

ENTRYPOINT /bin/sh /start.sh
