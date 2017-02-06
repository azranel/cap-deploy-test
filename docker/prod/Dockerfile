FROM elixir:1.4

ENV MIX_ENV=prod
ENV PORT=4000
ENV APP_HOME /var/www/app

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME

RUN apt-get update
RUN apt-get install -y postgresql-client

RUN ls -l config/

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get --only-prod
RUN mix phoenix.digest
RUN mix compile --no-debug-info
RUN mix compile.protocols

EXPOSE 4000

CMD ["mix", "phoenix.server"]
