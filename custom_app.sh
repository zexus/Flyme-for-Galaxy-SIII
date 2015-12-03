#!/bin/bash

OUT=out

apkBaseName=$1
tempSmaliDir=$2

function applyPatch () {
	app_name=$1
	app_dir=$2

	for patch in `find $app_name -name "*.patch"`
	do
		smali_file=`cat $patch | grep "^---" | sed "s@$app_name\/@$app_name#@" | cut -d"#" -f2 | awk -F "\t" '{print $1}'`
		patch $app_dir/$smali_file $patch

			for rej in `find $app_dir -name "*.rej"`
			do
				echo "Patch $patch failed!!"
				exit 1
			done
	done
}

if [ $1 = "Keyguard" ];then
	applyPatch $1 $2
fi

if [ $1 = "Telecom" ];then
	applyPatch $1 $2
fi

if [ $1 = "SystemUI" ];then
	applyPatch $1 $2
fi

if [ "$apkBaseName" = "Keyguard" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the field IccCardConstants$State;->NETWORK_LOCKED with IccCardConstants$State;->PERSO_LOCKED"
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#IccCardConstants$State;->NETWORK_LOCKED#IccCardConstants$State;->PERSO_LOCKED#g'

elif [ "$apkBaseName" = "SystemUI" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the field IccCardConstants$State;->NETWORK_LOCKED with IccCardConstants$State;->PERSO_LOCKED"
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#IccCardConstants$State;->NETWORK_LOCKED#IccCardConstants$State;->PERSO_LOCKED#g'

elif [ "$apkBaseName" = "TelephonyProvider" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the interface "getAllMessagesFromIcc" with "getAllMessagesFromIccExtended""
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#invoke-static {}, Landroid\/telephony\/SmsManager;->getAllMessagesFromIcc()Ljava\/util\/ArrayList#invoke-static {}, Landroid\/telephony\/SmsManager;->getAllMessagesFromIccExtended()Ljava\/util\/ArrayList#g'

fi
