# Use node alpine as it's a small node image
FROM node:20.10-alpine as sastamedicine-frontend

# Create the directory on the node image 
# where our app will live
WORKDIR /opt/app/frontend

# Copy package.json and package-lock.json
# to the /app working directory
COPY package*.json ./

# Install dependencies in /app
RUN set -x && \
    yarn install

# Copy the rest of our app folder into /app
COPY . .

# Expose port 3000
EXPOSE 3000

# Make the entrypoint.sh executable
COPY ./entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh

# Run the entrypoint.sh script
CMD /bin/entrypoint.sh
