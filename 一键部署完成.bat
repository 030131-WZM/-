@echo off
chcp 65001 >nul
color 0A
title 小铭的专属浏览器 - 一键部署

echo.
echo ========================================
echo     小铭的专属浏览器 - 一键部署工具
echo ========================================
echo.

echo 🚀 开始部署流程...
echo.

echo 📂 第一步：检查Git环境
git --version
if %errorlevel% neq 0 (
    echo ❌ Git未安装，请先安装Git
    pause
    exit /b 1
)
echo ✅ Git环境正常
echo.

echo 📁 第二步：进入部署目录
cd deploy
if %errorlevel% neq 0 (
    echo ❌ 无法进入部署目录
    pause
    exit /b 1
)
echo ✅ 已进入部署目录
echo.

echo 🔑 第三步：设置Git凭据
git config credential.helper store
echo ✅ 凭据助手已设置
echo.

echo 📤 第四步：推送代码到GitHub
echo.
echo 💡 重要提示：
echo 🔹 当提示输入用户名时，请输入：030131-WZM
echo 🔹 当提示输入密码时，请输入你的GitHub Personal Access Token
echo 🔹 Token获取地址：https://github.com/settings/tokens
echo.
echo 🚀 开始推送...
echo.

git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ✅ 代码推送成功！
    echo.
    echo 📋 第五步：启用GitHub Pages
    echo 1. 访问：https://github.com/030131-WZM/-
    echo 2. 点击 Settings
    echo 3. 找到 Pages 选项
    echo 4. 选择 "Deploy from a branch"
    echo 5. Branch选择 "main"
    echo 6. 点击 Save
    echo.
    echo ⏱️ 部署完成后等待1-5分钟
    echo.
    echo 🌐 访问地址：
    echo    https://030131-wzm.github.io/-/
    echo.
    echo 📱 移动端访问：
    echo    https://030131-wzm.github.io/-/mobile.html
    echo.
    echo 🎉 部署完成！
) else (
    echo.
    echo ❌ 推送失败，请检查：
    echo 1. 网络连接是否正常
    echo 2. GitHub Token是否正确
    echo 3. 是否有推送权限
    echo.
    echo 💡 请查看：部署步骤详解.md
)

echo.
echo ========================================
echo 万能小虾米制作
echo ========================================
echo.
pause