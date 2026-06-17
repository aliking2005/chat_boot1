FROM rasa/rasa:3.6.0-full

WORKDIR /app

COPY . /app

USER root

EXPOSE 8000

CMD rasa run --enable-api --cors "*" -p ${PORT:-8000}
