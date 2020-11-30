import http.server
import json
import socketserver
import hashlib

class MyHttpRequestHandler(http.server.SimpleHTTPRequestHandler):
	def do_GET(self):
		# TODO - implement login and logoff.
		self.send_response(200)

		# Setting the header
		self.send_header("Content-type", "text/html")

		# Whenever using 'send_header', you also have to call 'end_headers'
		self.end_headers()

		with open("/home/password_db.json", "r") as fp:
			user_real_password = json.load(fp)

		# Extract query param
		query_components = parse_qs(urlparse(self.path).query)
		if 'user_solt' in query_components and "user_hash" in query_components:
			user_solt = query_components["user_solt"][0]
			user_hash = query_components["user_hash"][0]

			if hashlib.md5(user_real_password + user_solt) == user_hash:
				# Success
				# TODO - generate cookie and save in /home/coockie_db
				# TODO - return the cookie and the user needs to use it in order to access websites on the web server.
			else:
				# TODO - return Failed authentication.
				pass



		# Now return a resdiredt to the home webpage with the cookie.
		if self.path == '/':
            self.path = 'bamba.html'
        return http.server.SimpleHTTPRequestHandler.do_GET(self) 

# Create an object of the above class
handler_object = MyHttpRequestHandler

PORT = 5000
my_server = socketserver.TCPServer(("", PORT), handler_object)

# Star the server
my_server.serve_forever()