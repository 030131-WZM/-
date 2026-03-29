@echo off
chcp 65001 >nul
color 0A
title 小铭的专属浏览器 - 简化部署

echo.
echo ========================================
echo     小铭的专属浏览器 - 简化部署工具
echo ========================================
echo.

echo 🚀 开始简化部署流程...
echo.

echo 📋 第一步：检查文件
echo ✅ 检查部署文件...
dir deploy\*.html
dir deploy\*

echo.
echo 📋 第二步：准备部署
echo ✅ 文件已准备完成
echo ✅ GitHub仓库地址：https://github.com/030131-WZM/-
echo ✅ 部署目录：deploy

echo.
echo 📋 第三步：部署步骤
echo.
echo 🌐 方法1：网页直接上传（推荐）
echo ----------------------------------------
echo 1. 打开：https://github.com/new
echo 2. 创建新仓库：
echo    - Repository name: xiaoming-browser
echo    - 选择 Public
echo    - 点击 Create repository
echo 3. 上传文件：
echo    - 进入仓库页面
echo    - 点击 Add file → Upload files
echo    - 拖拽 deploy 文件夹中的所有文件
echo    - 点击 Commit new files
echo 4. 启用 Pages：
echo    - 点击 Settings
echo    - 找到 Pages 选项
echo    - 选择 Deploy from a branch
echo    - Branch 选择 main
echo    - 点击 Save
echo.
echo 🌐 部署完成后访问地址：
echo    https://030131-wzm.github.io/-/
echo    https://030131-wzm.github.io/-/mobile.html
echo.
echo 📱 安卓端使用：
echo    - 直接访问上述地址
echo    - 添加到手机主屏幕
echo    - 支持所有主流搜索引擎
echo.
echo ⏱️ 预计时间：5-10分钟
echo.
echo 🎉 完成后即可在安卓设备上使用！
echo.
echo ========================================
echo 万能小虾米制作
echo ========================================
echo.

echo 💡 现在开始部署吗？
echo 1. 打开自动部署页面：自动部署页面.html
echo 2. 手动按照上述步骤操作
echo.

pause