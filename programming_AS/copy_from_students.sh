#!/bin/bash

# Author : R05229011
# mail : r05229011@ntu.edu.tw
# goal : copy assignments from students and backup their hw
# restriction : support only for AS study (teacher: prof. Wei-Ting Chen)
# version :	1-st -> Sep 11, 2016
#			2-nd -> Sep 20, 2016 : for crontab version
#			3-rd -> Sep 22, 2016 : support preview hw
#           4-th -> Jan 10, 2018 : modify content, no adding new features

# check parameters
# student_list_file_name : student list
# pre_hw_list_or_hw_directory :
#	pre_hw_list : preXX which includes files in this preview
#	hw_directory : teacher specifies direcotry name

if [ "$#" != "2" ] ;then
	echo "Pleause use : './copy_from_students [student_list_file_name] [pre_hw_list_or_hw_directory]'"
	exit 1
fi

# set your own student ID here
ta_id="r05229011"
header="R05"

# begin work section
cd /home/${header}/${ta_id}
lists=`cat $1`
dest="${2}_back"
order="mkdir ${dest}"
${order}
par=${2}
if [ "${par:0:3}" == "pre" ];then
	# should be preview hw
	# for example $ ./copy_from_students.sh student_list pre02
	# and pre02's content is CtoF.f95 and CtoF_x5.f95

	prehw=`cat ${2}`
	for student in ${lists}
	do
		header=`echo ${student:0:3} | tr [a-z] [A-Z]`
		order="mkdir ${dest}/${student}_${2}"
		${order}
		for list in ${prehw}
		do
			order="cp /home/${header}/${student}/work/${list} ./${dest}/${student}_${2}/${list}"
			${order}
		done
	done
else
	# should be hw (also can collect exam files. If not familiar with modification, please feel free to contact me)
	# for example : $ ./copy_from_students.sh student_list hw01
	# "hw01" should be the folder in students' places
	# I'll copy all contents in the folder, so user should post process this folder

	for student in ${lists}
	do
		header=`echo ${student:0:3} | tr [a-z] [A-Z]`
		if [ -d "/home/${header}/${student}/${2}" ];then
			order="cp -r /home/${header}/${student}/${2} ./${dest}/${student}_${2}"
			${order}
		else
			# if student don't have hw, check his/her state to make sure that he/she doesn't have hw
			order="mkdir ./${dest}/${student}_${2}_empty"
			${order}
			order="ll /home/${header}/${students}/ > ./${dest}/${students}_${2}_empty/current_state"
			${order}
		fi
	done
fi

# backup the files
order="tar zcvf ${2}.tar.gz ${dest}"
${order}
