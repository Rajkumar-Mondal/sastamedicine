# Use node alpine as it's a small node image
FROM node:20.10-alpine as sastamedicine-backend

# Create the directory on the node image 
# where our app will live
WORKDIR /opt/app/backend

# Copy package.json and package-lock.json
# to the /app working directory
COPY package*.json ./

# Install dependencies in /app
RUN set -x && \
    yarn install

# Copy the rest of our app folder into /app
COPY . .

# Prisma Client is being initialized
RUN npx prisma generate

# Make the entrypoint.sh executable
COPY ./entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh

# Run the entrypoint.sh script
CMD /bin/entrypoint.sh
