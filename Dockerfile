# build stage
FROM node:latest as build-stage
WORKDIR /app
COPY package*.json ./
COPY quasar.config.js ./
COPY . .
RUN npm install
RUN npm install -g @vue/cli
RUN npm install -g @quasar/cli 
RUN quasar build
# production stage
FROM nginx:latest as production-stage
COPY --from=build-stage /app/dist/spa /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
