FROM node:latest
WORKDIR /app
COPY . /app
# Set ownership for the /.npm directory
RUN mkdir /.npm && chown -R 1010130000:0 /.npm
RUN npm install
# EXPOSE 5000
CMD ["npm", "start"]
