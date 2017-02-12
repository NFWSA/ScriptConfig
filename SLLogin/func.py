from urllib import parse, request
import socket

pswd = '0411020210070700020110020603'
url = 'http://10.0.0.55:803/include/auth_action.php'
url2 = 'http://10.0.0.55:803/srun_portal_pc.php'

def login(username, pswd_nocry):
	data = {
		'action': 'login',
		'username': username,
		'password': pswd_nocry,
		'ac_id': 1,
		'user_ip': '',
		'nas_ip': '',
		'user_mac': '',
		'save_me': 1,
		'ajax': 1,
	}
	para = parse.urlencode(data).encode('utf-8')

	req = request.Request(url = url, data = para)
	res = request.urlopen(req)
	req = request.Request(url = url2, data = para)
	res = request.urlopen(req)
	return res.read().decode()


def logout(username, pswd_nocry):
	data = {
		'action': 'logout',
		'username': username,
		'password': pswd_nocry,
		'ajax': 1,
	}
	para = parse.urlencode(data).encode('utf-8')

	req = request.Request(url = url, data = para)
	res = request.urlopen(req)
	return res.read().decode()

def info():
	data = {
		'action': 'get_online_info',
		'user_ip': socket.gethostbyname(socket.gethostname())
	}
	para = parse.urlencode(data).encode('utf-8')
	req = request.Request(url = url, data = para)
	res = request.urlopen(req)
	return res.read().decode().split(',')