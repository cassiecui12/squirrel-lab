# Use an official base image
FROM avd.aquasec.com/appshield/ds002

# Create a non-root user
RUN useradd -ms /bin/bash myuser

# Switch to the non-root user
USER myuser

# Set the working directory
WORKDIR /app

# ... (add the rest of your Dockerfile instructions)

FROM alpine:latest

RUN apk add bash
ADD dummy.txt .
