server "bartlecki.pl", user: "root", roles: %w{host app db web}
set :ports, {4000=>80}
set :namespace, "twitter_elixir"
set :password, ""
set :docker_dockerfile, "docker/prod/Dockerfile"
set :branch, "prod-deployment"
