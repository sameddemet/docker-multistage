# Base image
FROM python:alpine AS base
WORKDIR /app
RUN pip install mkdocs

# Init stage
FROM base AS init
RUN mkdocs new projet

# Dev stage
FROM init AS dev
WORKDIR /app/projet
CMD [ "mkdocs", "serve", "-a", "0.0.0.0:8000" ]

# Build stage
FROM init AS build
WORKDIR /app/projet
RUN mkdocs build
CMD [ "bin", "sh" ]

# Prod stage
FROM caddy AS prod
COPY --from=build /app/projet/site /usr/share/caddy