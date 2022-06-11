FROM python:latest

WORKDIR /builddir

COPY src/requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY src/ .

COPY .env .env

RUN ["python", "setup.py"]

CMD ["python", "main.py"]
