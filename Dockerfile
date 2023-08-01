FROM python:slim
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . flask_bio/
RUN flask run
#EXPOSE 5000