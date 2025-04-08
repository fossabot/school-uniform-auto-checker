FROM python:alpine

COPY . /app

WORKDIR /app

RUN uv sync --frozen --no-cache

ENV TZ=Asia/Seoul

ENTRYPOINT ["uv", "run","python", "main.py"]
