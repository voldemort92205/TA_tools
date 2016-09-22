In this folder,

1. copy_from_students.sh
	copy_from_students.sh is copy files from students and backup
	There are two kinds of hw : preview hw and HW.
	Note that before use this, re-set "echo ${order}" as "${order}" (i.e. remove echo)
	Following are two example for hw
	for HW:
		$ ./copy_from_students.sh student_list hw01
	for preview hw:
		$ ./copy_from_students.sh student_list pre02
		and pre02 has a sample file in same folder
