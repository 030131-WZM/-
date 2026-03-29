@echo off
chcp 65001 >nul
title 部署状态检查

echo.
echo ========================================
echo     小铭的专属浏览器 - 部署状态检查
echo ========================================
echo.

echo 🔍 检查当前部署状态...
echo.

echo 📂 Git状态：
cd deploy
git status
echo.

echo 📋 分支信息：
git branch -v
echo.

echo 🌐 远程仓库：
git remote -v
echo.

echo 💾 提交历史：
git log --oneline -n 3
echo.

echo 📋 检查部署文件：
echo 📄 index.html - 主浏览器文件
if exist "index.html" (
    echo ✅ 主浏览器文件存在
) else (
    echo ❌ 主浏览器文件缺失
)

echo 📱 mobile.html - 移动端版本
if exist "mobile.html" (
    echo ✅ 移动端版本存在
) else (
    echo ❌ 移动端版本缺失
)

echo 🌐 CNAME - 自定义域名
if exist "CNAME" (
    echo ✅ 自定义域名文件存在
) else (
    echo ❌ 自定义域名文件缺失
)

echo 📝 README.md - 说明文件
if exist "README.md" (
    echo ✅ 说明文件存在
) else (
    echo ❌ 说明文件缺失
)

echo.
echo 🚀 下一步操作：
echo 1. 如果所有文件都存在，运行：一键部署完成.bat
echo 2. 如果有文件缺失，请重新运行：快速部署.bat
echo 3. 部署完成后，访问：https://030131-wzm.github.io/-/
echo.
echo ========================================
echo 万能小虾米制作
echo ========================================
echo.
pause