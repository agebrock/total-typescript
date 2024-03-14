$env:TS_NODE_PATH = "{dirname}\node_modules\ts-node";
$env:TS_NODE_ROOT = "{dirname}";
node --experimental-specifier-resolution=node --import 'data:text/javascript, import { register } from "node:module"; import { pathToFileURL } from "node:url";  register("ts-node/esm", pathToFileURL(process.env.TS_NODE_PATH));' $args