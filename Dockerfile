FROM python:latest

COPY . /

RUN python3 run.py
