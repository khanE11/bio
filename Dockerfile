FROM python:slim
COPY requirements.txt requirements.txt
RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt
COPY . flask_bio/
CMD python /flask_bio/bio.py
EXPOSE 5000
ENTRYPOINT ["./boot.sh"]