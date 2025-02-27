FROM python:3.12

RUN mkdir /app
WORKDIR /app

RUN python -m venv /venv

COPY requirements.txt /app/requirements.txt
RUN /venv/bin/pip install -r requirements.txt

COPY . /app

ENTRYPOINT ["/venv/bin/python", "connectcam.py"]
