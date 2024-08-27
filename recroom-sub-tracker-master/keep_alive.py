from flask import Flask
from threading import Thread

app = Flask('')

@app.route('/')
def main():
    return "Script is alive thank you very much"

def run():
    app.run(host="0.0.0.0", port=8000)

def keep_alive():
    server = Thread(target=run)
    server.start()
