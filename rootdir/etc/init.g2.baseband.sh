#!/system/bin/sh
# Set baseband in LP LG G2 by syhost & Zdrowy Gosciu

target=`getprop ro.board.platform`

case "$target" in
    "msm8974" )
        if [ "`getprop gsm.version.baseband`" == "" ]; then
				version=`strings -n 12 /firmware/image/modem.b21 | grep "M8974A-" | head -1`
			if [ "$version" != "" ]; then
				setprop gsm.version.baseband $version
			fi
        fi
    ;;
esac
