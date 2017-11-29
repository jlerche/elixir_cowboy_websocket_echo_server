FROM bitwalker/alpine-elixir:1.5.2

EXPOSE 8080

WORKDIR /app/
ADD . ./

RUN mix deps.get
RUN mix release.init
ENV MIX_ENV=prod
RUN mix release
RUN ./_build/prod/rel/echo_server/bin/echo_server start
