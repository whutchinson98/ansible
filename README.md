# Ansible

## Running Playbook

`ansible-playbook local.yml -t npm`

## Using Docker for testing

`docker build -t new-computer -f ubuntu.Dockerfile .`

`docker run --rm -it new-computer:latest bash`

## Tags

A list of all valid ansible tags

```
install
core
dependencies
zsh
neovim
tooling
languages
golang
rust
node
npm
docker
docker-compose
language-server
aws
```
