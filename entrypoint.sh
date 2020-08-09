#!/bin/bash

set -e

declare -A argList=(
    [INPUT_COMMAND]=${INPUT_COMMAND}
    [INPUT_SECRET_ID]=${INPUT_SECRET_ID}
    [INPUT_SECRET_KEY]=${INPUT_SECRET_KEY}
    [INPUT_BUCKET]=${INPUT_BUCKET}
    [INPUT_REGION]=${INPUT_REGION}
)

for key in "${!argList[@]}"
do
    value=${argList[$key]}
    echo "$key -> $value"
    if [ -z "$value" ]; then
        echo "param $(echo $key | sed 's/INPUT_//' | tr 'A-Z' 'a-z') is required"
        exit 1
    fi
done

coscmd config -a $INPUT_SECRET_ID -s $INPUT_SECRET_KEY -b $INPUT_BUCKET -r $INPUT_REGION

eval $INPUT_COMMAND