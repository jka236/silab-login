from flask import Blueprint, render_template
from flask_login import login_required, current_user

main = Blueprint('main', __name__)

@main.route('/')
def index():
    return render_template('index.html')

@main.route('/myinfo')
@login_required
def myinfo():
    return render_template('myinfo.html', name=current_user.username, email=current_user.email)

@main.route('/monitoring')
def monitoring():
    return render_template('monitoring.html')