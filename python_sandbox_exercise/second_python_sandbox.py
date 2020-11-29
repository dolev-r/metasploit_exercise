#!/usr/bin/python3
from flask import Flask, request
from flask import render_template
from flask_cors import CORS
import pickle

class Executer(object):
	not_allowed = [
		"\'",
		"print",
		"import",
		"eval",
		"exit",
		"import",
		"exec",
		"read",
		"write"
	]


	def execute(self, operation):
		if any(f in operation for f in self.not_allowed):
			message = "Do you think my code is so insecure ?\n"
			message += "You can never get out of my jail :)"
		else:
			try:
				return str(eval(operation))
			except NameError:
				message = "NameError: name '{}' is not defined".format(operation)
			except Exception:
				message = "Error: {}".format(operation)

		return message


app = Flask(__name__, template_folder="/home/dolev/coding/docker/python_sandbox_exercise/templates")

@app.route('/')
def hello():
	return render_template("index.html")


@app.route('/submit_form', methods=["POST"])
def hello_name():
	executer = Executer()
	operation = request.values["calculation_to_preform"]
	return executer.execute(operation)


if __name__ == '__main__':
	app.run(debug=True)





