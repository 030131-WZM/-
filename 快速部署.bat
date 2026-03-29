@echo off
chcp 65001 >nul
echo ========================================
echo     小铭的专属浏览器 - 快速部署工具
echo ========================================
echo.

echo 🌟 正在准备部署文件...
echo.

:: 创建部署目录
if exist "deploy" rmdir /s /q "deploy"
mkdir deploy

:: 复制浏览器文件
echo 📄 复制浏览器文件...
copy "C:\Users\90760\Desktop\小铭的专属浏览器.html" "deploy\index.html"

:: 创建CNAME文件（用于自定义域名）
echo 🌐 创建CNAME文件...
echo xiaoming-browser.github.io > deploy\CNAME

:: 创建README文件
echo 📝 创建说明文件...
echo # 小铭的专属浏览器 > deploy\README.md
echo. >> deploy\README.md
echo 这是小铭的专属浏览器，支持多搜索引擎和快速访问。 >> deploy\README.md
echo. >> deploy\README.md
echo ## 功能特色 >> deploy\README.md
echo - 🔍 智能搜索 >> deploy\README.md
echo - 🌍 多搜索引擎支持 >> deploy\README.md
echo - 🚀 快速访问常用网站 >> deploy\README.md
echo - 📱 移动端优化 >> deploy\README.md
echo. >> deploy\README.md
echo ## 使用方法 >> deploy\README.md
echo 1. 访问网站即可使用 >> deploy\README.md
echo 2. 在搜索框中输入关键词 >> deploy\README.md
echo 3. 点击搜索或选择快速搜索 >> deploy\README.md
echo. >> deploy\README.md
echo ## 部署步骤 >> deploy\README.md
echo 1. 在GitHub创建新仓库 >> deploy\README.md
echo 2. 将此文件夹内容上传到仓库 >> deploy\README.md
echo 3. 在仓库设置中启用GitHub Pages >> deploy\README.md

:: 创建.gitignore文件
echo 🚫 创建.gitignore文件...
echo node_modules/ > deploy\.gitignore
echo .DS_Store >> deploy\.gitignore
echo Thumbs.db >> deploy\.gitignore

echo.
echo ✅ 部署文件准备完成！
echo.
echo 📂 部署目录：deploy\
echo 📄 包含文件：
echo   - index.html（主浏览器文件）
echo   - CNAME（自定义域名）
echo   - README.md（说明文件）
echo   - .gitignore（忽略文件）
echo.
echo 🚀 下一步操作：
echo.
echo 1️⃣ 打开GitHub，创建新仓库：
echo    名称：xiaoming-browser
echo    类型：Public（公开）
echo.
echo 2️⃣ 上传文件到GitHub：
echo    a) 进入deploy文件夹
echo    b) 初始化Git仓库：git init
echo    c) 添加文件：git add .
echo    d) 提交：git commit -m "Initial commit"
echo    e) 关联远程仓库：git remote add origin https://github.com/你的用户名/xiaoming-browser.git
echo    f) 推送：git push -u origin main
echo.
echo 3️⃣ 启用GitHub Pages：
echo    a) 进入仓库Settings
echo    b) 找到Pages选项
echo    c) Source选择"Deploy from a branch"
echo    d) Branch选择"main"
echo    e) 点击Save
echo.
echo 4️⃣ 访问网站：
echo    https://你的用户名.github.io/xiaoming-browser/
echo.
echo 📱 安卓端访问：
echo   - 直接访问上述网址
echo   - 或扫描二维码（使用二维码生成器.html）
echo.
echo 🎉 完成后就可以在安卓设备上随时随地访问专属浏览器了！
echo.
echo ========================================
echo 部署工具完成 - 万能小虾米制作
echo ========================================
echo.
pause