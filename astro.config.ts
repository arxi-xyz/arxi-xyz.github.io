import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://arxi-xyz.github.io',
  output: "static",
  prefetch: true,
  compressHTML: true,
});