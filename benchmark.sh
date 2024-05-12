#!/bin/bash

# Define the number of requests, concurrency, and duration for the benchmark
NUM_REQUESTS=1000
CONCURRENCY=10
DURATION=45s

# Define the host and ports for uvicorn and granian
UVICORN_PORT=8081
GRANIAN_PORT=8080

echo "Benchmarking Uvicorn Server"
ab -n $NUM_REQUESTS -c $CONCURRENCY -t $DURATION http://localhost:$UVICORN_PORT/ > uvicorn_benchmark.txt

echo "Benchmarking Granian Server"
ab -n $NUM_REQUESTS -c $CONCURRENCY -t $DURATION http://localhost:$GRANIAN_PORT/ > granian_benchmark.txt

echo "Benchmarking completed."