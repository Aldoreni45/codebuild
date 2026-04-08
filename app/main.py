from fastapi import FastAPI

app = FastAPI(title="Simple FastAPI CI/CD Practice")


@app.get("/")
def read_root() -> dict[str, str]:
    return {"message": "FastAPI is running"}


@app.get("/health")
def health() -> dict[str, str]:
    return {"status": "ok"}
