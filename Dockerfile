FROM node:23-alpine

WORKDIR /app

COPY package.json .

# RUN npm create vite@latest my-react-app -- --template react
# WORKDIR /app/my-react-app
RUN npm install
COPY . .
CMD ["npm", "run", "dev"]