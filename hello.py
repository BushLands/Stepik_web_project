def wsgi_app(environ, start_responce):
	headers = [('content-type', 'text/plain')]
	body = '\n'.join(environ['QUERY_STRING'].split('&').encode('utf-8'))
	status = '200 OK'
	start_responce(status, headers)
	yield body