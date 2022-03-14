#!/bin/sh
if [ -e /output/Config.json ]; then
    cp -f /output/Config.json ./
fi
if [ -e /output/*.bplist ]; then
    cp -f /output/*.bplist ./
fi

dotnet GetNearRankScript.dll
cp -f ./*.bplist /output
cp -f ./Config.json /output

exec "$@"