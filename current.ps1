$env:TS_NODE_PATH = "D:\source\cmd\node_modules\ts-node";
$env:TS_NODE_ROOT = "D:\source\cmd";
node --experimental-specifier-resolution=node --import 'data:text/javascript, import { register } from "node:module"; import { pathToFileURL } from "node:url";  register("ts-node/esm", pathToFileURL(process.env.TS_NODE_PATH));' $args