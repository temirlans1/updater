import subprocess
import requests
import json

with open('/home/pi/koraupdate/token.json', 'r') as f:
    token = json.load(f)

auth_token = token['token']
header = {'Authorization': 'Token ' + auth_token}
device_idn = token['id']

try:
	r = requests.get("https://www.kora.work/api/updated/"+device_idn, headers=header, timeout = 10)
	print(r.text)
	status = json.loads(r.text)
	if status['success']:
		s = subprocess.run(['./upd.sh'], stdout=subprocess.PIPE)
		print(s.stdout)
		r = requests.post("https://www.kora.work/api/updated/"+device_idn, headers=header, data={'status':False}, timeout = 10)
except:
	print("net")
	pass
