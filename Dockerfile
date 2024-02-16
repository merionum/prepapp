FROM python:3.8

RUN apt-get update
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt

ENTRYPOINT ["streamlit", "run", "app.py"]