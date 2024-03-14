#!/bin/bash

# Set the environment variables
export TS_NODE_PATH="$PWD/node_modules/ts-node"
export TS_NODE_ROOT="$PWD"

# Execute the node command
node --inspect --experimental-specifier-resolution=node --import 'data:text/javascript, import { register } from "node:module"; import { pathToFileURL } from "node:url";  register("ts-node/esm", pathToFileURL(process.env.TS_NODE_PATH));' "$@"
