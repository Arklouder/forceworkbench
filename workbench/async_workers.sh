#!/usr/bin/env bash

export forceworkbench__logHandler__default='stdout';
MAX_WORKERS=${MAX_WORKERS:-1}

if [ $MAX_WORKERS -eq 0 ]; then
    echo "MAX_WORKERS of 0 not allowed"
    exit 1
fi

inf() {
    while true; do
        echo 0
    done
}

trap "echo 'Waiting for graceful shutdown... done'; exit;" SIGINT SIGTERM

#inf | xargs --max-args=1 --max-procs=$MAX_WORKERS php async_worker.php

while true; do
    echo "."
    sleep 1
done