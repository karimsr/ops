############################
# Build container
############################
FROM python:3.7 AS dep

WORKDIR /ops

ADD . .

############################
# Final container
############################
FROM python:3.7-alpine

WORKDIR /ops

COPY --from=dep /ops .
