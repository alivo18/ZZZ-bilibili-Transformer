@echo off
	setlocal enabledelayedexpansion
	set START_MI=C:\miHoYo Launcher\games\ZenlessZoneZero Game
	if exist "%START_MI%\config.ini" (
		echo 目录在默认盘
	) else (
		set START_MI=D:\miHoYo Launcher\games\ZenlessZoneZero Game
		echo 目录不在默认盘
		if exist "!START_MI!\config.ini" (
			echo 目录在默认盘1
		) else (
			set START_MI=E:\miHoYo Launcher\games\ZenlessZoneZero Game
			echo 目录不在默认盘1
			if exist "!START_MI!\config.ini" (
				echo 目录在默认盘2
			) else (
				set START_MI=F:\miHoYo Launcher\games\ZenlessZoneZero Game
				echo 目录不在默认盘2
				if exist "!START_MI!\config.ini" (
					echo 目录在默认盘3
				) else (
					set /p userInput=未查询到游戏目录请手动输入游戏目录:
					set START_MI=!userInput!
				)
			)
		)
	)		
		::echo %START_MI%
		::echo !START_MI!
	xcopy PCGameSDK.dll "%START_MI%\ZenlessZoneZero_Data\Plugins\x86_64" /y

if exist "%START_MI%\config.ini" (
	if exist "%START_MI%\config米.ini" (
		ren "%START_MI%\config.ini" "config阿.ini"
		ren "%START_MI%\config米.ini" "config.ini"
		msg * /time:2 成功修改成官服
	) else if exist "%START_MI%\config阿.ini" (
		ren "%START_MI%\config.ini" "config米.ini"
		ren "%START_MI%\config阿.ini" "config.ini"
		msg * /time:2 成功修改成B服
	) else (
		(
			echo [general]
			echo channel=14
			echo sub_channel=0
			echo cps=zzz_bilibili_pc
			echo uapc={"hyp":{"uapc":""},"nap_cn":{"uapc":""}}
			echo game_version=1.0.0
			echo plugin_sdk_version=3.5.0
		) > "%START_MI%\config阿.ini"
	)
) else (
	ren "%START_MI%\config米.ini" "config.ini"
	msg * /time:2 成功修改成官服
)
::pause>nul