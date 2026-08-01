FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

########################################################
# SYSTEM DEPENDENCIES
########################################################

RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    git \
    build-essential \
    sudo \
    && rm -rf /var/lib/apt/lists/*

########################################################
# UBUNTU USER
########################################################

RUN mkdir -p /etc/ssh/sshd_config.d && \
    printf '%s\n' 'PasswordAuthentication no' 'ChallengeResponseAuthentication no' 'UsePAM no' \
    > /etc/ssh/sshd_config.d/disable_password_auth.conf

RUN id -u ubuntu >/dev/null 2>&1 || useradd -m -s /bin/bash ubuntu
RUN usermod -aG sudo ubuntu
RUN echo "ubuntu ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ubuntu
RUN echo "ubuntu:ubuntu" | chpasswd

########################################################
# AGENTFILES
########################################################

ADD --keep-git-dir=true \
  https://github.com/martindzejky/agentfiles.git#master \
  /home/ubuntu/.agentfiles

RUN mkdir -p /home/ubuntu/.cursor && \
    cd /home/ubuntu/.agentfiles && \
    git submodule update --init --recursive && \
    HOME=/home/ubuntu ./install

RUN chown -R ubuntu:ubuntu /home/ubuntu

# Workaround: expose ~/.cursor at the filesystem root so Cursor's upward walk finds it
RUN ln -s /home/ubuntu/.cursor /.cursor

########################################################
# SET USER
########################################################

USER ubuntu
WORKDIR /home/ubuntu
