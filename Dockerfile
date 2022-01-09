FROM python:3.9-slim
ENV PYTHONONBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app

CMD gunicorn server:app -b 0.0.0.0:9080 --workers 4