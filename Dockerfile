FROM node:22.12.0-alpine As builder

WORKDIR /build

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm install 

COPY . .

RUN npm run build          # build = `tsc -p .`



FROM node:22.12.0-alpine As runner

WORKDIR /app

COPY --from=builder /build/node_modules node_modules    # copy those files into this stage
COPY --from=builder /build/package.json package.json
COPY --from=builder /build/package-lock.json package-lock.json
COPY --from=builder /build/dist/ dist/

CMD [ "npm", "start"]