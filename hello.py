from flask import Flask

app = Flask(__name__)

def get_greeting():
    return "hello rockie, welcome to ur application"

@app.route("/")
def home():
    return get_greeting()

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=9000)
