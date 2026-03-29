@echo off
chcp 65001 >nul
echo ========================================
echo     小铭的专属浏览器 - SSH密钥部署方案
echo ========================================
echo.

echo 🔍 检测到认证问题，正在准备SSH解决方案...
echo.

echo 📋 当前状态：
echo ✅ Git环境已配置
echo ✅ 文件已准备完成
echo ✅ 本地提交已完成
echo ✅ 远程仓库已设置
echo ⏳ 需要SSH密钥认证
echo.

echo 🚀 SSH密钥部署方案：
echo.

echo 第一步：生成SSH密钥（如果还没有）
echo.
echo 请在命令提示符中执行以下命令：
echo.
echo 1. 生成SSH密钥：
echo    ssh-keygen -t ed25519 -C "xiaoming-browser@example.com"
echo.
echo 2. 按三次回车使用默认设置
echo.
echo 3. 查看公钥：
echo    cat ~/.ssh/id_ed25519.pub
echo.
echo 4. 复制公钥内容
echo.
echo 第二步：添加SSH密钥到GitHub
echo.
echo 1. 访问：https://github.com/settings/keys
echo 2. 点击 "New SSH key"
echo 3. Title：xiaoming-browser-deploy
echo 4. Key：粘贴刚才复制的公钥内容
echo 5. 点击 "Add SSH key"
echo.
echo 第三步：修改远程仓库地址为SSH
echo.
echo 在命令提示符中执行：
echo git remote set-url origin git@github.com:030131-WZM/-.git
echo.
echo 第四步：推送代码
echo.
echo git push -u origin main
echo.
echo ========================================
echo 万能小虾米制作
echo ========================================
echo.
pause