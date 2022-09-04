#!/usr/bin/env bash

set -euo pipefail

for i in $(seq $1); do
    curl --silent "https://www.yugioh-card.com/uk/limited/?l=$i" | grep 'jsonData =' | yarn ts-node src/limit-regulation/tcg-extract-transform.ts data/limit-regulation/tcg
done
