const http = require('http');
const fs = require('fs');
const path = require('path');

const port = 8888;

const server = http.createServer((req, res) => {
    // 设置CORS头
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
    
    // 处理预检请求
    if (req.method === 'OPTIONS') {
        res.writeHead(200);
        res.end();
        return;
    }
    
    const filePath = path.join(__dirname, req.url === '/' ? 'index.html' : req.url);
    
    // 检查文件是否存在
    fs.access(filePath, fs.constants.F_OK, (err) => {
        if (err) {
            // 文件不存在，返回404
            res.writeHead(404, { 'Content-Type': 'text/html; charset=utf-8' });
            res.end(`
                <!DOCTYPE html>
                <html lang="zh-CN">
                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>404 - 页面未找到</title>
                    <style>
                        body {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                            min-height: 100vh;
                            display: flex;
                            align-items: center;
                            justify-content: center;
                            color: white;
                            text-align: center;
                        }
                        .container {
                            max-width: 600px;
                            padding: 40px;
                            background: rgba(255, 255, 255, 0.1);
                            border-radius: 20px;
                            backdrop-filter: blur(10px);
                        }
                        h1 {
                            font-size: 3em;
                            margin-bottom: 20px;
                        }
                        p {
                            font-size: 1.2em;
                            margin-bottom: 30px;
                        }
                        .btn {
                            padding: 15px 30px;
                            background: white;
                            color: #667eea;
                            border: none;
                            border-radius: 10px;
                            font-size: 16px;
                            cursor: pointer;
                            text-decoration: none;
                            display: inline-block;
                            transition: all 0.3s ease;
                        }
                        .btn:hover {
                            transform: translateY(-2px);
                            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
                        }
                    </style>
                </head>
                <body>
                    <div class="container">
                        <h1>404</h1>
                        <p>抱歉，您访问的页面不存在</p>
                        <a href="/" class="btn">返回主页</a>
                    </div>
                </body>
                </html>
            `);
            return;
        }
        
        // 获取文件扩展名
        const extname = path.extname(filePath);
        let contentType = 'text/html';
        
        switch (extname) {
            case '.js':
                contentType = 'text/javascript';
                break;
            case '.css':
                contentType = 'text/css';
                break;
            case '.json':
                contentType = 'application/json';
                break;
            case '.png':
                contentType = 'image/png';
                break;
            case '.jpg':
                contentType = 'image/jpg';
                break;
            case '.gif':
                contentType = 'image/gif';
                break;
            case '.svg':
                contentType = 'image/svg+xml';
                break;
        }
        
        // 读取文件并返回
        fs.readFile(filePath, (err, content) => {
            if (err) {
                res.writeHead(500, { 'Content-Type': 'text/html; charset=utf-8' });
                res.end('<h1>服务器错误</h1><p>抱歉，服务器出现了问题</p>');
            } else {
                res.writeHead(200, { 'Content-Type': contentType });
                res.end(content);
            }
        });
    });
});

server.listen(port, () => {
    console.log(`服务器运行在 http://localhost:${port}`);
    console.log(`网络访问: http://192.168.172.128:${port}`);
    
    // 自动打开浏览器
    const { exec } = require('child_process');
    
    // Windows系统
    if (process.platform === 'win32') {
        exec(`start http://localhost:${port}`);
    } 
    // macOS系统
    else if (process.platform === 'darwin') {
        exec(`open http://localhost:${port}`);
    } 
    // Linux系统
    else if (process.platform === 'linux') {
        exec(`xdg-open http://localhost:${port}`);
    }
});