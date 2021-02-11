FROM python:3.9-slim-buster
RUN groupadd -r app &&\
    useradd -r -g app -d /app -s /sbin/nologin -c "Docker image user" app
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt --no-cache-dir
COPY src/ .
RUN chown -R app:app /app
USER app
ENTRYPOINT [ "/usr/local/bin/python" ]
CMD [ "./app.py" ] 
