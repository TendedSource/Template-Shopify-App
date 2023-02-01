#!/usr/bin/env bash


#   Uses tsconfig-paths to substitute import maps
#   https://github.com/dividab/tsconfig-paths

export TS_NODE_PROJECT='tsconfig.json'


#   https://github.com/wclr/ts-node-dev

ts-node-dev                                     \
    --project .github/tsconfig.server.json      \
    --require tsconfig-paths/register           \
    --ignore-watch "./.next/"                   \
    --respawn                                   \
    --clear                                     \
    Source/App.ts
