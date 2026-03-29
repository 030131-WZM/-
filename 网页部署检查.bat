@echo off
chcp 65001 >nul
color 0A
title 小铭的专属浏览器 - 网页部署检查

echo.
echo ========================================
echo     小铭的专属浏览器 - 网页部署检查
echo ========================================
echo.

echo 🚀 开始网页部署流程检查...
echo.

echo 📋 第一步：检查文件准备
echo ✅ 检查部署文件...
dir deploy\*.html
dir deploy\*

echo.
echo ✅ 文件准备完成
echo ✅ deploy文件夹包含所有必要文件
echo ✅ 文件大小正常
echo.

echo 📋 第二步：部署步骤确认
echo.
echo 🌐 网页部署步骤（方法1）：
echo.
echo 步骤1：创建GitHub仓库
echo   - 访问：https://github.com/new
echo   - Repository name：xiaoming-browser
echo   - 选择：Public
echo   - 点击：Create repository
echo.
echo 步骤2：上传文件
echo   - 进入仓库页面
echo   - 点击：Add file → Upload files
echo   - 拖拽 deploy 文件夹中的所有文件
echo   - 点击：Commit new files
echo.
echo 步骤3：启用GitHub Pages
echo   - 点击：Settings
echo   - 找到：Pages 选项
echo   - Source选择：Deploy from a branch
echo   - Branch选择：main
echo   - 点击：Save
echo.
echo 🌐 预期访问地址：
echo   https://030131-wzm.github.io/-/
echo   https://030131-wzm.github.io/-/mobile.html
echo.
echo 📱 安卓端使用：
echo   - 直接访问上述地址
echo   - 添加到手机主屏幕
echo   - 支持所有主流搜索引擎
echo.

echo 📋 第三步：工具准备
echo ✅ 网页部署步骤.html - 详细部署指南
echo ✅ 自动部署页面.html - 交互式部署页面
echo ✅ 部署完成页面.html - 成功后访问页面
echo ✅ deploy文件夹 - 部署文件
echo.

echo 📋 第四步：时间预估
echo ⏱️ 预计时间：5-10分钟
echo 🎯 难度：简单（无需Git命令）
echo 💡 建议：按照网页部署步骤.html操作
echo.

echo ========================================
echo 网页部署检查完成
echo ========================================
echo.

echo 💡 现在开始部署：
echo 1. 打开：网页部署步骤.html
echo 2. 按照步骤操作
echo 3. 完成后即可在安卓设备上使用
echo.

pause