import http.client
import http.server
import socketserver


conn = http.client.HTTPConnection("localhost")
conn.request("GET", "/index.html")
r1 = conn.getresponse()

dict = r1.getheaders()
print(dict)


PORT = 9000
http.server

class MyHttpRequestHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        self.path = 'index.html'
        return http.server.SimpleHTTPRequestHandler.do_GET(self)
Handler = MyHttpRequestHandler

with socketserver.TCPServer(("",PORT), Handler) as httpd:
    print("Http server Serving at port", PORT)
    httpd.serve_forever()
