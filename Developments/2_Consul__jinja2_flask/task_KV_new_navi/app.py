from flask import Flask, render_template
from flask_navigation import Navigation

app = Flask(__name__)
nav = Navigation(app)

nav.Bar('top', [
   nav.Item('Home', 'index'),
   nav.Item('Gfg', 'gfg', {'page': 5})
])

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/navpage')
def navpage():
    return render_template('navpage.html')

@app.route('/gfg/<int:page>')
def gfg(page):
    return render_template('gfg.html', page=page)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=6300)