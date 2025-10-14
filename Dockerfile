# Use Ubuntu latest image
FROM ubuntu:latest

# Disable interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update OS and install Python
RUN apt-get update && apt-get install -y python3 && apt-get clean

# Set working directory
WORKDIR /app

# Copy the Python script into container
COPY app.py .

# Define default command to run the app
CMD ["python3", "app.py"]

