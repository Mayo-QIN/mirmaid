#! /bin/bash
TIMESTAMP=`date +%Y-%m-%d`
alias docker='sudo docker'
sed -i "s/ENV REFRESHED_AT .*$/ENV REFRESHED_AT $TIMESTAMP/" Dockerfile
docker build -t PESSCARA/tactic .
# docker build -t PESSCARA/tactic:4.5.0.v01 .
# docker push PESSCARA/tactic
