@echo off
echo 正在部署小铭的专属浏览器到云端...
echo.

:: 检查是否安装了Git
echo 检查Git安装...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo 错误：未找到Git，请先安装Git
    pause
    exit /b 1
)

:: 创建临时目录
echo 创建临时目录...
if exist "temp_browser" rmdir /s /q "temp_browser"
mkdir temp_browser

:: 复制浏览器文件
echo 复制浏览器文件...
copy "C:\Users\90760\Desktop\小铭的专属浏览器.html" "temp_browser\index.html"

:: 创建GitHub Pages配置文件
echo 创建GitHub Pages配置文件...
echo # 小铭的专属浏览器 > temp_browser\README.md
echo. >> temp_browser\README.md
echo 这是一个为小铭专属定制的浏览器界面。 >> temp_browser\README.md
echo. >> temp_browser\README.md
echo ## 功能特色 >> temp_browser\README.md
echo - 智能搜索 >> temp_browser\README.md
echo - 多搜索引擎支持 >> temp_browser\README.md
 echo - 快速访问常用网站 >> temp_browser\README.md
echo - 美观的用户界面 >> temp_browser\README.md
echo. >> temp_browser\README.md
echo ## 使用方法 >> temp_browser\README.md
echo 1. 访问网站即可使用 >> temp_browser\README.md
echo 2. 在搜索框中输入关键词 >> temp_html\README.md
echo 3. 点击搜索或选择快速搜索 >> temp_browser\README.md

:: 初始化Git仓库
cd temp_browser
echo 初始化Git仓库...
git init
git add .
git commit -m "Initial commit: 小铭的专属浏览器"

echo.
echo 部署完成！请按照以下步骤继续：
echo.
echo 1. 在GitHub上创建一个新的仓库（命名为：xiaoming-browser 或类似名称）
echo 2. 复制仓库的HTTPS地址
echo 3. 运行以下命令（替换YOUR_REPO_URL为实际的仓库地址）：
echo    git remote add origin YOUR_REPO_URL
echo    git branch -M main
echo    git push -u origin main
echo.
echo 4. 在GitHub仓库设置中启用GitHub Pages
echo    Settings -> Pages -> Source -> Branch: main
echo.
echo 5. 部署完成后，你的浏览器将通过以下地址访问：
echo    https://YOUR_USERNAME.github.io/REPO_NAME/
echo.
echo 安卓设备可以通过这个地址随时随地访问你的浏览器！
echo.
pause