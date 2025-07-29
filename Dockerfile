FROM python:3.14.0rc1-slim

RUN apt-get update \
&& apt-get install gcc -y \
&& apt-get clean

COPY . /usr/src/mobsfscan

WORKDIR /usr/src/mobsfscan

RUN pip install --no-cache-dir -e .

ENTRYPOINT ["mobsfscan"]
