# Usage of TA_tool for programming AS
## Environment

* Machine: "study" in AS in NTU
* Support only for the class: 'program and Scientific Computing' in AS in NTU (teacher: prof. Wei-Ting Chen)
* If you are not sure whether these tools can be used in your class, please feel free to contact with me (r05229011@ntu.edu.tw).
* The form of hw is:
	* preview hw : some files in ~/work/
	* HW: in ~/hwXX/

## Tools
> Copy_from_students.sh

**Goal:**
copy_from_students.sh is to copy/backup files from students

**Files prepared in advance:**
* student_list:
	* for each line, there is one and only one student_id (do not including student's name)

**Usage:**
There are two kinds of hw : 'preview hw' and 'HW', and following are two example for how to use this shell script:
* for HW (hw01 is the folder):
```sh
$ ./copy_from_students.sh student_list hw01
```
* for preview hw (pre02 is a file that contains files assigned (there is an example for pre02)):
```sh
$ ./copy_from_students.sh student_list pre02
```
