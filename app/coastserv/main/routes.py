from flask import Blueprint
from flask import render_template, request
from flask import url_for, current_app

main = Blueprint('main', __name__)


@main.route('/')
@main.route('/home')
def home():
	return render_template('home.html')

