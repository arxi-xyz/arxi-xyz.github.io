FROM node:22-alpine

WORKDIR /app

RUN corepack enable && corepack prepare pnpm@9.15.4 --activate

COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

COPY . .

EXPOSE 4321

CMD ["pnpm", "exec", "astro", "dev", "--host", "0.0.0.0", "--port", "4321"]
