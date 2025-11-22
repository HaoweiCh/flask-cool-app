from flask import Flask, render_template, jsonify
import os

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

# 健康检查路由
@app.route("/health")
def health():
    """健康检查端点，返回应用状态信息"""
    status = {
        "status": "healthy",
        "service": "flask-cool-app",
        "version": "0.1.0",
        "environment": os.environ.get("FLASK_ENV", "production")
    }
    return jsonify(status), 200

if __name__ == "__main__":
    app.run(debug=True)
