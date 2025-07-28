import { defineConfig } from 'astro/config';

import tailwind from '@astrojs/tailwind';
import relativeLinks from 'astro-relative-links';
import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
  site: 'https://shino-music.com',
  integrations: [tailwind(), relativeLinks(), sitemap()],
  output: 'static',
  trailingSlash: 'always',
  vite: {
    resolve: {
      alias: {
        '@visualImages': '/public/images/mainVisuals',
      },
    },
  },
});
