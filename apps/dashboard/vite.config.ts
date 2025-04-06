import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";
import path from "path";

export default defineConfig({
  base: "/dashboard/",
  server: {
    port: 3001,
    strictPort: true,
  },
  plugins: [vue()],
  resolve: {
    alias: {
      "@ui": path.resolve(__dirname, "../../packages/ui"),
      "@hooks": path.resolve(__dirname, "../../packages/hooks"),
      "@shared": path.resolve(__dirname, "../../shared"),
    },
  },
});
