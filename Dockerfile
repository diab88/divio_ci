FROM node:18-alpine
RUN mkdir -p /home/app
COPY ./ /home/app
WORKDIR /home/app
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]