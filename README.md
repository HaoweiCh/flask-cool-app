# Flask Cool App

一个简洁优雅的 Flask Web 应用项目，专注于快速开发和最佳实践。本项目采用现代化的项目结构和依赖管理，帮助你快速构建可扩展的 Web 应用。

## ✨ 特性

- 🚀 **现代化依赖管理**：使用 `uv` 进行高效的依赖管理
- 📁 **清晰的项目结构**：分离模板、静态文件和应用逻辑
- 🎨 **响应式设计**：包含基础 CSS 样式和 JavaScript 交互
- 🔧 **开发友好**：支持调试模式和热重载
- 📝 **完整文档**：详细的安装和使用说明

## 🛠️ 技术栈

- **后端框架**：Flask 3.1.2+
- **Python 版本**：3.8 - 3.13（推荐使用稳定版本）
- **依赖管理**：uv
- **前端**：HTML5, CSS3, JavaScript (ES6+)

## 📦 安装

### 前置要求

- Python 3.8 或更高版本（推荐 3.11 或 3.12）
- [uv](https://github.com/astral-sh/uv) 依赖管理工具

### 安装步骤

1. **克隆项目**
   ```bash
   git clone https://github.com/HaoweiCh/flask-cool-app.git
   cd flask-cool-app
   ```

2. **创建并激活虚拟环境**
   ```bash
   # 使用 uv 创建虚拟环境
   uv venv
   
   # 激活虚拟环境
   # macOS/Linux
   source .venv/bin/activate
   # Windows
   .venv\Scripts\activate
   ```

3. **安装依赖**
   ```bash
   uv sync
   ```

4. **运行应用**
   ```bash
   python app.py
   ```

应用将在 http://localhost:5000 启动，你可以在浏览器中访问。

## 🚀 快速开始

### Docker 部署（推荐）

1. **使用 Docker Compose 启动应用**：
   ```bash
   docker compose up --build
   ```

2. **访问应用**：
   应用将在 http://localhost:5000 启动

3. **其他 Docker 命令**：
   ```bash
   # 后台运行
   docker compose up -d
   
   # 查看日志
   docker compose logs -f
   
   # 停止应用
   docker compose down
   ```

### 本地开发

1. **安装依赖**：
   ```bash
   uv sync
   ```

2. **运行应用**：
   ```bash
   python app.py
   ```

### 项目结构

```
flask-cool-app/
├── app.py              # 主应用文件
├── Dockerfile          # Docker 配置
├── docker-compose.yml  # Docker Compose 配置
├── .dockerignore       # Docker 忽略文件
├── pyproject.toml      # 项目配置和依赖
├── static/             # 静态文件
│   ├── style.css      # 样式文件
│   └── script.js      # JavaScript 文件
├── templates/          # HTML 模板
│   └── index.html     # 主页模板
├── scripts/            # 脚本文件
│   └── build.sh       # 构建脚本
└── README.md          # 项目文档
```

### 基本用法

1. **添加新路由**：在 `app.py` 中添加新的路由函数
2. **创建模板**：在 `templates/` 目录下添加 HTML 文件
3. **添加样式**：在 `static/style.css` 中定义样式
4. **添加交互**：在 `static/script.js` 中编写 JavaScript 代码

## 🎨 自定义

### 修改主页

编辑 `templates/index.html` 来自定义页面内容：

```html
<h1>你的自定义标题</h1>
<p>添加你的内容...</p>
```

### 添加样式

在 `static/style.css` 中添加自定义样式：

```css
.custom-class {
    color: #your-color;
    font-size: 16px;
}
```

### 添加交互功能

在 `static/script.js` 中添加 JavaScript 功能：

```javascript
document.addEventListener('DOMContentLoaded', function() {
    // 你的代码
});
```

## 🔧 开发模式

应用默认以调试模式运行，支持：
- 自动重载：代码修改后自动重启
- 调试器：详细的错误信息和调试界面
- 交互式调试：在浏览器中直接调试代码

## 📝 API 示例

### 添加新路由

```python
@app.route("/about")
def about():
    return render_template("about.html")

@app.route("/api/data")
def get_data():
    return {"message": "Hello from API!"}
```

## 🐛 常见问题

### Python 版本兼容性

⚠️ **重要**：请避免使用 Python 3.14 alpha 版本，因为它与 Flask 存在兼容性问题。推荐使用 Python 3.11 或 3.12。

### 依赖安装失败

如果遇到依赖安装问题，尝试：
```bash
# 重新安装依赖
uv sync --reinstall

# 或使用 pip（备用方案）
pip install flask>=3.1.2
```

## 🤝 贡献

欢迎提交 Issue 和 Pull Request！

1. Fork 本项目
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🔗 相关链接

- [Flask 官方文档](https://flask.palletsprojects.com/)
- [uv 文档](https://github.com/astral-sh/uv)
- [Python 官方网站](https://www.python.org/)

---

**Happy Coding! 🎉**

如有问题或建议，欢迎随时联系我。