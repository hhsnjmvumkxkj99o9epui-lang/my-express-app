FROM node:16-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN adduser -D appuser && chown -R appuser /usr/src/app
USER appuser
EXPOSE 3000
CMD ["npm", "start"]