# Base image: slim Python 3.11

FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy the dependency file first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose the port used by the FastAPI app
EXPOSE 8080


# Command to run the app

# Uses environment variables for flexibility:
# HOST (default: 0.0.0.0)
# PORT (default: 8080)
#     uvicorn app:app --host=0.0.0.0 --port=8080

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]