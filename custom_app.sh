#!/bin/bash

OUT=out

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

if [ $1 = "TelephonyProvider" ];then
	applyPatch $1 $2
fi

