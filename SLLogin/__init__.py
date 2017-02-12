from . import func

username = '1120132171'
pswd_nocry = '78119443129150'

def lgin():
	return func.login(username, pswd_nocry)

def lgout():
	return func.logout(username, pswd_nocry)

logout = func.logout
info = func.info
login = func.login