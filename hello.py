def wsgi_app(environ, start_responce):
	headers = [('content-type', 'text/plain')]
	query = environ['QUERY_STRING']
	body = '\n'.join(query[query.find('?')+1:].split('&').encode('utf-8'))
	status = '200 OK'
	start_responce(status, headers)
	yield body