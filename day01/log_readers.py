def read_log(filename):
	with open(filename, 'r') as f:
		for line in f:
			if "eror" in line.lower():
				print("ERROR:", line.strip())

read_log("sample.log)
