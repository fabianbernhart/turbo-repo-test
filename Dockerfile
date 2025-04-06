# Dockerfile
FROM node:20 AS build
WORKDIR /app

COPY . .
RUN corepack enable && corepack prepare pnpm@latest --activate
RUN pnpm install
RUN pnpm build

FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY apps/dashboard/dist /usr/share/nginx/html/dashboard
COPY apps/admin/dist /usr/share/nginx/html/admin
COPY apps/marketing/dist /usr/share/nginx/html/marketing
