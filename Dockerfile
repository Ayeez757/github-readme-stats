FROM node:22-alpine

WORKDIR /app

# Install dependencies first for better build cache reuse.
COPY package.json package-lock.json* ./

# express currently lives in devDependencies in this project,
# so keep dev deps to run express.js in self-host mode.
RUN npm install --include=dev --omit=optional

COPY . .

ENV PORT=9000
EXPOSE 9000

CMD ["node", "express.js"]
