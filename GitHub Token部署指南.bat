@echo off
chcp 65001 >nul
echo ========================================
echo     小铭的专属浏览器 - GitHub Token部署
echo ========================================
echo.

echo 🔍 检测到认证问题，正在准备Token解决方案...
echo.

:: 创建临时配置文件
echo 📝 创建Git配置文件...
echo [credential] > gitconfig.txt
echo helper = store >> gitconfig.txt
echo. >> gitconfig.txt
echo [url "https://github.com/"] >> gitconfig.txt
echo insteadOf = https://030131-WZM@github.com/ >> gitconfig.txt

echo ✅ Git配置文件已创建
echo.

echo 📋 请按照以下步骤操作：
echo.
echo 步骤1：创建GitHub Personal Access Token
echo 1. 访问：https://github.com/settings/tokens
echo 2. 点击 "Generate new token" → "Generate new token (classic)"
echo 3. Token名称：xiaoming-browser-deploy
echo 4. 过期时间：选择合适的期限
echo 5. 勾选权限：repo (完整仓库访问权限)
echo 6. 点击 "Generate token"
echo 7. 复制生成的token（只显示一次，请妥善保存）
echo.
echo 步骤2：使用Token推送
echo 1. 打开命令提示符
echo 2. 进入部署目录：cd C:\Users\90760\.openclaw\workspaceopenclaw config\deploy
echo 3. 设置Git凭据：git config credential.helper store
echo 4. 推送代码：git push -u origin main
echo 5. 当提示输入用户名时：输入 030131-WZM
echo 6. 当提示输入密码时：粘贴刚才复制的token
echo.
echo 步骤3：启用GitHub Pages
echo 1. 访问：https://github.com/030131-WZM/-
echo 2. 点击 Settings
echo 3. 找到 Pages 选项
echo 4. Source选择 "Deploy from a branch"
echo 5. Branch选择 "main"
echo 6. 点击 Save
echo.
echo 🌐 部署完成后访问地址：
echo    https://030131-wzm.github.io/-
echo.
echo 📱 移动端访问：
echo    https://030131-wzm.github.io/-/mobile.html
echo.
echo ========================================
echo 万能小虾米制作
echo ========================================
echo.
pause