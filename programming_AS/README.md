In this folder,

Environment:
	Support only for 'program and Scientific Computing' in AS in NTU
	If you are not sure whether these files can be used in your class, please feel free to contact with me.
	The form of hw is:
		preview hw : some files in ~/work/
		HW: in ~/hwXX/

Files:
1. copy_from_students.sh
	copy_from_students.sh is copy files from students and backup
	There are two kinds of hw : 'preview hw' and 'HW'.

	Note that before use this, re-set "echo ${order}" as "${order}" (i.e. remove echo)

	student_list:
		for each line, there is one and only one student_id (not including student's name)

	Following are two example for how to use this shell script:
	for HW:
		$ ./copy_from_students.sh student_list hw01
	for preview hw:
		$ ./copy_from_students.sh student_list pre02
		and pre02 has a sample file in same folder
