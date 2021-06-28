#!/bin/bash
NUM_THREAD=$1
NUM_CONN=$2
DURATION=$3
RPS=$4

./wrk -D expt -t $NUM_THREAD -c $NUM_CONN -d $DURATION -s ./scripts/social-network/read-user-timeline.lua http://localhost:8080/wrk2-api/user-timeline/read -R $RPS
