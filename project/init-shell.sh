#!/bin/sh

export FLASK_APP=project
export FLASK_DEBUG=1
flask db init || echo "DB init skip"

flask db migrate
flask db upgrade
flask run --host=0.0.0.0 --port=4000