@echo off
	setlocal enabledelayedexpansion
	set START_MI=C:\miHoYo Launcher\games\ZenlessZoneZero Game
	if exist "%START_MI%\config.ini" (
		echo Ŀ¼��Ĭ����
	) else (
		set START_MI=D:\miHoYo Launcher\games\ZenlessZoneZero Game
		echo Ŀ¼����Ĭ����
		if exist "!START_MI!\config.ini" (
			echo Ŀ¼��Ĭ����1
		) else (
			set START_MI=E:\miHoYo Launcher\games\ZenlessZoneZero Game
			echo Ŀ¼����Ĭ����1
			if exist "!START_MI!\config.ini" (
				echo Ŀ¼��Ĭ����2
			) else (
				set START_MI=F:\miHoYo Launcher\games\ZenlessZoneZero Game
				echo Ŀ¼����Ĭ����2
				if exist "!START_MI!\config.ini" (
					echo Ŀ¼��Ĭ����3
				) else (
					set /p userInput=δ��ѯ����ϷĿ¼���ֶ�������ϷĿ¼:
					set START_MI=!userInput!
				)
			)
		)
	)		
		::echo %START_MI%
		::echo !START_MI!
	xcopy PCGameSDK.dll "%START_MI%\ZenlessZoneZero_Data\Plugins\x86_64" /y

if exist "%START_MI%\config.ini" (
	if exist "%START_MI%\config��.ini" (
		ren "%START_MI%\config.ini" "config��.ini"
		ren "%START_MI%\config��.ini" "config.ini"
		msg * /time:2 �ɹ��޸ĳɹٷ�
	) else if exist "%START_MI%\config��.ini" (
		ren "%START_MI%\config.ini" "config��.ini"
		ren "%START_MI%\config��.ini" "config.ini"
		msg * /time:2 �ɹ��޸ĳ�B��
	) else (
		(
			echo [general]
			echo channel=14
			echo sub_channel=0
			echo cps=zzz_bilibili_pc
			echo uapc={"hyp":{"uapc":""},"nap_cn":{"uapc":""}}
			echo game_version=1.0.0
			echo plugin_sdk_version=3.5.0
		) > "%START_MI%\config��.ini"
	)
) else (
	ren "%START_MI%\config��.ini" "config.ini"
	msg * /time:2 �ɹ��޸ĳɹٷ�
)
::pause>nul