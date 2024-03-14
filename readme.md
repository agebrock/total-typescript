# _ts - A TypeScript Runner for Node.js

Today with TypeScript and a sprinkle of ES module and CommonJS debugging! 🚀

We wanted this to have a simple TypeScript runner for Node.js, but it turned into a wild adventure. 😅

```bash
_ts script.ts
```

## What's this all about?

So, picture this: you're setting up a new TypeScript generator for Node.js, just minding your own business. You're usually switching between Bun and Node, depending on the use case. But somehow, you end up in the deep, dark depths of ES module and CommonJS hell in Node.js. 😱

## The Mission

Your goal? To run TypeScript smoothly like butter, using imports without file extensions. You want to import stuff like:

```typescript
import { foo } from "./lib/foo"; // No need for foo.js!
import { someESModule } from "ems-module";
import { commonJSModule } from "common-js-module";
```

But wait, there's more! You also want the debugger to work out of the box, with minimal configuration. Easy peasy, right? Well, not quite.

(well maybe it is, but let's pretend it's not for the sake of this story) - but still if you know how to do it, please let me know! 😅

## The Struggle is Real

You've tried everything - ts-node, ts-node-ems, tsx - but alas, nothing seems to work. It's like banging your head against a wall. 😩

So, you turn to Discord for help, only to find that everyone else is facing the same issues. Misery loves company, right?

## The Hack of the Day

But fear not! After a nasty combination of PowerShell wizardry and a tiny hack of ts-node with a Node flag, you finally crack the code! 💥

Here's what you had to do:

1. Run Node with `--experimental-specifier-resolution=node`.
2. Run Node with a gnarly script injection: 

```bash
--import 'data:text/javascript, import { register } from "node:module"; import { pathToFileURL } from "node:url"; register("ts-node/esm", pathToFileURL(process.env.TS_NODE_PATH));'
```

## The Journey Continues...

Unfortunately, you weren't able to inject a `tsconfig.json` just yet. But fear not, dear reader! You believe it's possible, and when you find the solution, you'll be the first to know! 😎

In the meantime, you've concocted a clever hack in the `configuration.js` that gets injected into `ts-node` on post-installation. Who knew hacking could be so much fun?

And because you're a Linux and WSL lover, you've added Unix support as well! The `ts2` command works like a charm, thanks to yet another hack you've never seen before. What a day, indeed! 🎩

But for now, rejoice! You can execute TypeScript just like in Bun with:

```bash
_ts script.ts
```

And that's the Daily.js project for you! Stay tuned for more adventures in the wild world of TypeScript and Node.js. 🌟