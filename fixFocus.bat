@echo off
:: MainFunction
:main

:: ����ѡ�����
set "Choose="
:: ����ncmĿ¼
set "ncm=E:\wyyyy\cloudmusic.exe"
:: ��մ���
cls
:: ������ɫ
color 0a

:: չʾ��Ϣ
echo �������ţ�
echo 1.�޸�Explorer��ס����
echo 2.�޸�NetEast Cloud Music����
echo 3.�޸�Edge����ǿ������Դ����
:: �û�ѡ��
set /p Choose=�������Ų��س���
if "%Choose%" == "1" (
	goto fixExp
) else if "%Choose%" == "2" (
	goto fixCloudMusic
) else if "%Choose%" == "3" (
	goto fixEdge
) else (
	echo ������Ĵ��ţ�%Choose% ��Ч������������
	timeout 1 >nul
	goto main
)


:: �޸�Explorer��ס����
:fixExp
:: ����explorer����
taskkill /f /im explorer.exe
:: ����explorer����
start explorer
:: չʾ��Ϣ
echo ���޸���Explorer
:: ���û�˼����ʱ�䣨����
timeout 2 >nul
:: �ص�������
goto main

:: �����ҵ��ԱȽ�lj��wyyװ��Betterncm�����������ʱ��ͻῨס
:fixCloudMusic
:: ��������
taskkill /f /im cloudmusic.exe
:: �򿪳���
start %ncm%
:: ��֪�û�
echo ���޸���%ncm%
:: ���û�˼����ʱ�䣨����
timeout 2 >nul
:: �ص�������
goto main

:: Edge�����Һ�̨������Ϊ�˿�����������WebView�������Ҳ���Ҫ
:fixEdge
:: ��������
taskkill /f /im msedge.exe
:: ��֪�û�
echo ���޸���msedge
:: ���û�˼����ʱ�䣨����
timeout 2 >nul
:: �ص�������
goto main