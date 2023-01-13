FROM python:3.11-alpine3.17
RUN mkdir /var/flask
COPY src/* /var/flask/
COPY tests /var/flask/tests
RUN python3.11 -m venv /var/flask/.venv
RUN source /var/flask/.venv/bin/activate &&  \
    pip install -r /var/flask/requirements.txt
