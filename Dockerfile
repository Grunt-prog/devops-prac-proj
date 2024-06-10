# Base image
FROM python:3.8-slim


# Set working directory
WORKDIR /app


# Copy application files
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

CMD ["python", "./app.py"]