### base image
FROM python:3.8-slim-buster

### before starting container
WORKDIR /app

RUN pip install fastapi \
    pip install uvicorn

COPY . .

### starting container
CMD [ "uvicorn", "main:app", "--host=0.0.0.0"]