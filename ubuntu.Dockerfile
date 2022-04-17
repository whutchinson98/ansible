FROM ubuntu:focal as base
ARG TAGS
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get install -y sudo && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

WORKDIR /root

COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
