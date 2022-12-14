#!/bin/sh

export FLASK_APP=project
export FLASK_DEBUG=1

echo "DB init"
sleep 10
flask db init && sleep 10 || echo "skip db init"
echo "Flask DB init"

flask db migrate && sleep 5
flask db upgrade
flask run --host=0.0.0.0 --port=4000