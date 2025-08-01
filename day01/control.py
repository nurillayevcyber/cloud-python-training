users = ["admin", "guest", "user"]

for u in users:
	if u == "admin":
		print("Admin access granted")
	else:
		print(f"{u} has limited access")
