@echo off
chcp 65001 >nul
echo ========================================
echo     小铭的专属浏览器 - 一键部署工具
echo ========================================
echo.

echo 🔍 检测到404错误，这是因为还没有部署到云端！
echo.
echo 🚀 现在开始一键部署流程...
echo.

:: 检查Git是否安装
echo 📋 检查Git安装...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ 错误：未找到Git，请先安装Git
    echo.
    echo 📥 下载Git：https://git-scm.com/download/win
    echo.
    pause
    exit /b 1
)

:: 检查GitHub登录状态
echo 🔐 检查GitHub登录状态...
git config user.name >nul 2>&1
if %errorlevel% neq 0 (
    echo ⚠️ 未配置Git用户信息，请先配置：
    echo git config --global user.name "你的GitHub用户名"
    echo git config --global user.email "你的邮箱"
    echo.
    pause
    exit /b 1
)

echo ✅ Git检查通过！
echo.

:: 创建部署目录
echo 📁 创建部署目录...
if exist "deploy" rmdir /s /q "deploy"
mkdir deploy

:: 复制浏览器文件
echo 📄 复制浏览器文件...
copy "C:\Users\90760\Desktop\小铭的专属浏览器.html" "deploy\index.html"

:: 创建移动端优化版本
echo 📱 创建移动端版本...
copy "本地测试版浏览器.html" "deploy\mobile.html"

:: 创建CNAME文件
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
echo   - mobile.html（移动端版本）
echo   - CNAME（自定义域名）
echo   - README.md（说明文件）
echo   - .gitignore（忽略文件）
echo.

echo 🚀 现在开始上传到GitHub...
echo.

:: 初始化Git仓库
cd deploy
echo 🔄 初始化Git仓库...
git init

:: 添加文件
echo 📤 添加文件到Git...
git add .

:: 提交
echo 💾 提交更改...
git commit -m "Initial commit: 小铭的专属浏览器"

:: 设置远程仓库
echo 🌐 设置远程仓库...
echo.
echo 请在GitHub上创建一个新仓库，名称为：xiaoming-browser
echo 创建完成后，复制仓库的HTTPS地址
echo.
echo 例如：https://github.com/你的用户名/xiaoming-browser.git
echo.
set /p repo_url=请输入GitHub仓库地址： 

if "%repo_url%"=="" (
    echo ❌ 未输入仓库地址，请手动上传
    echo.
    echo 手动上传步骤：
    echo 1. 打开GitHub，创建新仓库 "xiaoming-browser"
    echo 2. 进入deploy文件夹
    echo 3. 运行：git remote add origin %repo_url%
    echo 4. 运行：git branch -M main
    echo 5. 运行：git push -u origin main
    echo.
    pause
    exit /b 1
)

echo 🚀 推送到GitHub...
git remote add origin %repo_url%
git branch -M main
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo 🎉 部署成功！
    echo.
    echo 📱 现在启用GitHub Pages：
    echo 1. 进入GitHub仓库页面
    echo 2. 点击 "Settings"
    echo 3. 找到 "Pages" 选项
    echo 4. Source选择 "Deploy from a branch"
    echo 5. Branch选择 "main"
    echo 6. 点击 "Save"
    echo.
    echo 🌐 访问地址：
    echo https://你的用户名.github.io/xiaoming-browser/
    echo.
    echo 📱 移动端访问：
    echo https://你的用户名.github.io/xiaoming-browser/mobile.html
    echo.
    echo 🔗 二维码将更新为新的访问地址！
    echo.
    echo 💡 提示：部署完成后，重新打开二维码页面即可正常使用
) else (
    echo.
    echo ❌ 部署失败，请检查：
    echo 1. 网络连接是否正常
    echo 2. GitHub仓库地址是否正确
    echo 3. 是否有推送权限
    echo.
    echo 请手动完成上传步骤
)

cd ..

echo.
echo ========================================
echo 部署完成 - 万能小虾米制作
echo ========================================
echo.
pause