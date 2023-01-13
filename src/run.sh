#!/bin/sh
cd /var/flask
source .venv/bin/activate
gunicorn -w 2 --bind 0.0.0.0:8000 'app:app'