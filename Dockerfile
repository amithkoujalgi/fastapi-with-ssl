FROM ubuntu:18.04

RUN apt-get update && apt-get install -y nginx
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get install -y python3.7 
RUN apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev wget libbz2-dev
RUN apt-get install -y python3-pip libpython3.7-dev

RUN mkdir -p /app
COPY requirements.txt /app/requirements.txt
COPY helloapp.py /app/helloapp.py

RUN python3.7 -m pip install -r /app/requirements.txt


RUN echo 'uvicorn helloapp:app --reload &' > /app/start.sh
RUN echo 'nginx -g daemon off;' >> /app/start.sh

EXPOSE 80
STOPSIGNAL SIGTERM
ENTRYPOINT [ "/app/start.sh" ]