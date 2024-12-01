from flask import Flask

app = Flask("myapp")

@app.route("/doker")
def home():
    return "Ini adalah halamann docker"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
