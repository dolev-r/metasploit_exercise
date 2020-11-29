import pickle

class Moses():
	def __init__(self):
		import os
		self.x = os.listdir()

	def hi(self):
		return self.x

with open("exp.pickle", "wb") as f:
	pickle.dump(Moses(), f)