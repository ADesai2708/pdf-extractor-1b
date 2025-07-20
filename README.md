# PDF Extractor - Round 1B

Extracts heading outlines from PDFs using font size logic.

## 📦 Run with Docker

```bash
docker build -t pdf-extractor .
docker run --rm -v "${PWD}/input:/app/input" -v "${PWD}/output:/app/output" pdf-extractor
