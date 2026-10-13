import { defineConfig } from 'vite';

// Resolve versioned Caps assets against this project's npm dependencies.
export default defineConfig({ resolve: { preserveSymlinks: true } });
