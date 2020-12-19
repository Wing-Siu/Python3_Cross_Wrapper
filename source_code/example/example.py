import requests
response = requests.get("https://api-ipv4.ip.sb/ip")
print("Hello! \nYour IPv4 Address is",response.text)
