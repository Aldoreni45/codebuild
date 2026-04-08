# Simple FastAPI for CI/CD Practice

This is a minimal FastAPI project prepared for CI/CD practice with uv and GitHub Actions.

## Run locally

1. Install dependencies:

   uv sync --extra dev

2. Start the API:

   uv run uvicorn app.main:app --reload

3. Open:

   - http://127.0.0.1:8000/
   - http://127.0.0.1:8000/health
   - http://127.0.0.1:8000/docs

## Run tests

uv run pytest

## CI

GitHub Actions workflow is in `.github/workflows/ci.yml`.
It installs dependencies with uv and runs pytest on push and pull requests.
