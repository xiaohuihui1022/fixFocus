@echo off
:: MainFunction
:main

:: 设置选择变量
set "Choose="
:: 设置ncm目录
set "ncm=E:\wyyyy\cloudmusic.exe"
:: 清空窗口
cls
:: 设置颜色
color 0a

:: 展示信息
echo 请输入编号：
echo 1.修复Explorer卡住错误
echo 2.修复NetEast Cloud Music白屏
echo 3.修复Edge“超强”的资源分配
:: 用户选择
set /p Choose=请输入编号并回车：
if "%Choose%" == "1" (
	goto fixExp
) else if "%Choose%" == "2" (
	goto fixCloudMusic
) else if "%Choose%" == "3" (
	goto fixEdge
) else (
	echo 您输入的代号：%Choose% 无效，请重新输入
	timeout 1 >nul
	goto main
)


:: 修复Explorer卡住错误
:fixExp
:: 结束explorer进程
taskkill /f /im explorer.exe
:: 开启explorer进程
start explorer
:: 展示信息
echo 已修复：Explorer
:: 给用户思考的时间（？）
timeout 2 >nul
:: 回到主函数
goto main

:: 由于我电脑比较lj，wyy装了Betterncm插件，所以有时候就会卡住
:fixCloudMusic
:: 结束进程
taskkill /f /im cloudmusic.exe
:: 打开程序
start %ncm%
:: 告知用户
echo 已修复：%ncm%
:: 给用户思考的时间（？）
timeout 2 >nul
:: 回到主函数
goto main

:: Edge经常挂后台可能是为了快速启动或者WebView，不过我不需要
:fixEdge
:: 结束进程
taskkill /f /im msedge.exe
:: 告知用户
echo 已修复：msedge
:: 给用户思考的时间（？）
timeout 2 >nul
:: 回到主函数
goto main