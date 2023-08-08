FROM python:slim
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . flask_bio/
CMD python /flask_bio/bio.py