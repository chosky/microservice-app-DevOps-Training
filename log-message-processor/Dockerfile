# syntax=docker/dockerfile:1

FROM python:3.6

WORKDIR /app

COPY . .

RUN python3 -m pip install -r requirements.txt

EXPOSE 8085
CMD [ "python3", "-u", "main.py" ]