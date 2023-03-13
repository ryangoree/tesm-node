import { defineConfig } from 'tsup'
import tsconfigPaths from 'tsconfig-paths'

tsconfigPaths.register()

export default defineConfig({
  entry: ['src/index.ts'],
  format: ['esm'],
  sourcemap: true,
  dts: true,
  clean: true,
  minify: true,
  shims: true,
})
