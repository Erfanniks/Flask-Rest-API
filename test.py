import requests

BASE = "http://localhost/video/"

response = requests.patch(BASE + "2", {})
try:
    print(response.json())
except requests.exceptions.JSONDecodeError:
    print("Failed to decode JSON. Raw response:")
    print(response.text)
