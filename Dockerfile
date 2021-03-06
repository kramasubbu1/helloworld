# Test web-app 
# Linux x64
FROM alpine


# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8081

ENTRYPOINT ["node", "./app.js"]
