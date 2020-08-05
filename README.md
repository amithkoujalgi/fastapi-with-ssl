# fastapi-with-ssl

This is to demonstrate the setup of SSL for FastAPI apps.

Prerequisites:

- Docker engine
- Python 3+

Build:

```bash
./build.sh
```

Run:

```bash
./run.sh
```

Head to https://localhost



Run without Docker:

```
uvicorn helloapp:app --reload --ssl-keyfile ./nginx-cfg/selfsigned.key --ssl-certfile ./nginx-cfg/selfsigned.crt
```