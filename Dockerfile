FROM python:3.6

ENV LANG C.UTF-8

ARG project_dir=/app/

ADD requirements.txt $project_dir
ADD app.py $project_dir

WORKDIR $project_dir
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
