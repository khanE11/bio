FROM python:slim

RUN useradd flask_bio

WORKDIR /home/flask_bio

RUN python -m venv venv

COPY app app
COPY bio.py config.py boot.sh ./
RUN chmod +x boot.sh

ENV FLASK_APP bio.py

RUN chown -R flask_bio:flask_bio./
USER flask_bio

EXPOSE 5000
ENTRYPOINT ["./boot.sh"]