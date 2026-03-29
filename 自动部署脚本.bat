@echo off
chcp 65001 >nul
echo ========================================
echo     小铭的专属浏览器 - 自动部署脚本
echo ========================================
echo.

echo 🔍 正在检查Git状态...
echo.

:: 检查Git状态
git status
echo.

echo 📋 当前分支和远程仓库信息：
git branch -v
echo.
git remote -v
echo.

echo 🚀 准备推送代码到GitHub...
echo.

:: 设置凭据助手
echo 📝 设置Git凭据助手...
git config credential.helper store

echo ✅ 凭据助手已设置
echo.

echo 💾 推送代码到GitHub...
echo.
echo 📝 注意：当提示输入用户名时，请输入：030131-WZM
echo 📝 当提示输入密码时，请输入你的GitHub Personal Access Token
echo.

git push -u origin main

echo.
echo ========================================
echo 如果推送成功，请继续以下步骤：
echo 1. 访问：https://github.com/030131-WZM/-
echo 2. 点击 Settings
echo 3. 找到 Pages 选项
echo 4. 选择 "Deploy from a branch"
echo 5. Branch选择 "main"
echo 6. 点击 Save
echo ========================================
echo.
pause