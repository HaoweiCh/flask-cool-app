# Use Python 3.12 slim image as base
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install uv and hatchling
RUN pip install uv hatchling

# Copy dependency files
COPY pyproject.toml uv.lock ./

# Install dependencies
RUN uv sync --frozen

# Copy application code
COPY . .

# Expose Flask default port
EXPOSE 5000

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_ENV=production
ENV PYTHONPATH=/app/.venv/lib/python3.12/site-packages

# Run the application
# Use gunicorn for production, Flask dev server for development
CMD ["sh", "-c", "if [ \"$FLASK_ENV\" = \"development\" ]; then uv run python app.py; else uv run gunicorn --bind 0.0.0.0:5000 --workers 2 app:app; fi"]
