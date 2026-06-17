cat > Dockerfile << 'EOF'
FROM rasa/rasa:3.6.0-full

WORKDIR /app

COPY . /app

USER root

EXPOSE 10000

CMD rasa run --enable-api --cors "*" -p ${PORT:-10000}
EOF