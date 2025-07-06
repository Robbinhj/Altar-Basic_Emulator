#!/bin/bash
set -e

# Installera abc80sim emulatorn från GitHub
if [ ! -d "abc80sim" ]; then
  git clone https://github.com/bztsrc/abc80sim.git
fi

cd abc80sim
make

echo "Startar ABC80-emulatorn..."
./abc80sim &

echo "Ladda BASIC-programmet altar_basic.bas i emulatorn och skriv RUN för att köra."
