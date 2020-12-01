import pickle
with open("aaa", "rb") as f:
	data = pickle.load(f)
	print(data())
