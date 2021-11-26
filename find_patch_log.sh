
usage() {
echo "$0 <patern> <path>"
echo " find in the patch-it logs where gentoo is still used"

}

if [[ $# != 2  ]]; then
 usage
 exit 1

fi

grep "$1\|^rpath"  $2 | grep -v ld-linux-x86-6 | grep -B 1  $1
