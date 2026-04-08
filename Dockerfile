FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

# Install uv and project dependencies first for better layer caching.
RUN pip install --no-cache-dir uv
COPY pyproject.toml README.md ./
RUN uv pip install --system --no-cache .

# Copy application code.
COPY app ./app

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
