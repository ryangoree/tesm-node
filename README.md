# tsm-node

A thin wrapper around [ts-node](https://github.com/TypeStrong/ts-node) that adds
support for [tsconfig paths](https://www.typescriptlang.org/docs/handbook/module-resolution.html#path-mapping) and importing files [without file extensions](https://nodejs.org/api/esm.html#mandatory-file-extensions).

## Install

```sh
# Locally in your project
npm i -D typescript ts-node tsm-node

# Or globally
npm i -g typescript ts-node tsm-node

# If using tsconfig paths
npm i -D tsconfig-paths

# Depending on configuration, you may also need types
npm i -D @types/node
```

## Usage

Because this is just a wrapper around
[ts-node](https://www.npmjs.com/package/ts-node), it retains nearly all of it's API. Just replace `ts-node` with
`tsm-node`.

```sh
# Basic usage.
tsm-node src/script.ts

# With tsconfig-paths
tsm-node src/script

# With the loader flag
node --loader tsm-node script.ts
```
