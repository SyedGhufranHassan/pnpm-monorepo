FROM node:20-alpine
WORKDIR /workspace
RUN corepack enable
COPY . .
RUN pnpm install --no-frozen-lockfile
RUN pnpm -r build
EXPOSE 3001
CMD ["pnpm","--filter","api","start"]
