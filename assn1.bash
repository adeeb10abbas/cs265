
#what we need to do in this assignment is 
filename="./.KS_Dir"  # Default to empty package
start_directory="."  # Default to empty target
while getopts ":f:" opt; do
  case ${opt} in
    f )
      filename="./$2"
      ;;
   \? )
     echo "Invalid Option: -$OPTARG" 1>&2
      ;;
  esac
done
shift $((OPTIND - 1))
metric="${@: -1}"
if (( $# > 1 )); then
    start_directory="${@:(-2):1}"
fi
num=0
for d in $(find $start_directory -type f -print); do
    echo $d
    abc=$(grep -n "$metric" "$d" | grep -o '[^ ]\+$')
    echo "$abc"
    num=$(( num + abc ))
    
done
echo "$metric $num" >> $filename
