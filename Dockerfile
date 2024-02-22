# Use Node.js 20 as the base image
FROM node:20

# Install Yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package*.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn install

# Copy the rest of the application code to the working directory
COPY . .

# Build the Nuxt.js application
RUN yarn build

# Expose port 3000 (or the port that your Nuxt.js app listens on)
EXPOSE 3000

# Command to run the application
CMD ["yarn", "dev"]

