FROM --platform=linux/amd64 python:3.10-slim

WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y build-essential

RUN pip install --no-cache-dir -r requirements.txt
RUN python3 -c "from sentence_transformers import SentenceTransformer; SentenceTransformer('paraphrase-MiniLM-L6-v2')"

ENTRYPOINT ["python3", "src/run_persona.py"]
