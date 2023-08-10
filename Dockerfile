FROM python:slim
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . flask_bio/
COPY bio.py /flask_bio/bio.py
CMD python /flask_bio/bio.py