#!/bin/sh
docker-compose build
docker tag dpp_dpp braindigitalis/dpp_dpp
docker push docker.io/braindigitalis/dpp_dpp

