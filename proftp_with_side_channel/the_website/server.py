"""
Certificate Generation:
	openssl req -x509 -newkey rsa:4096 -nodes -out cert.pem -keyout key.pem -subj "/C=US/ST=Utah/L=Lehi/O=Your Company, Inc./OU=IT/CN=yourdomain.com" -days 1000

should run with python 3.

"""


from flask import Flask
import tarfile

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, ssl_context=("cert.pem", "key.pem"))
