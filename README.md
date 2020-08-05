# fastapi-with-ssl

This is to demonstrate the setup of SSL for FastAPI apps, both with and without container-based setup.

### Prerequisites:

- Docker engine (if you want ot run the app inside a container)
- Python 3+

### Non-container based setup:

Install the Python libraries:

```bash
python3 -m pip install -r requirements.txt
```

Run the FastAPI app as `https`:

```bash
uvicorn helloapp:app \
    --ssl-keyfile ./nginx-cfg/selfsigned.key \
    --ssl-certfile ./nginx-cfg/selfsigned.crt
```
Head to https://localhost


### Docker-based setup:

Build:

```bash
./build.sh
```

Run:

```bash
./run.sh
```

Head to https://localhost
