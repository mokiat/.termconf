export DOCKER_CLIENT_TIMEOUT=240 # default 60
export DOCKER_BUILDKIT=1
export COMPOSE_HTTP_TIMEOUT=240 # default 60
export COMPOSE_PARALLEL_LIMIT=15 # default 64
export COMPOSE_DOCKER_CLI_BUILD=1

alias d='docker'
alias dc='docker compose'

function dclearimg() {
  docker rmi $(docker images | awk '{ print $3 " -> " $1 }' | grep '<none>' | awk '{ print $1 }')
}
