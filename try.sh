#!/bin/bash
if [ "$#" -lt 2 ]; then
    echo "Usage: try <number of executions> <command to execute> [args...]"
    exit 1
fi

n="$1"
shift
command=("$@")

for i in $(seq "$n"); do
    echo "[TRY] attempt $i"
    "${command[@]}"

    if [ $? -eq 0 ]; then
        echo "[TRY] Success!"
        exit 0
    fi
done

echo "[TRY] No successes."
