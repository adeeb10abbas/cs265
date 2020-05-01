
#what we need to do in this assignment is 

filename="./.KS_Dir"  # Default to empty package
start_directory="./"  # Default to empty target

while getopts ":f:" opt; do
  case ${opt} in
    f )
      filename="./$2"
      echo "$filename"
      echo "This should work."
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


echo "This is start directory: $start_directory"
echo "This is the metric: $metric"
echo "t"



#OPTIND gives the position of the next command line argument.
# what shift does is that moves the index
# echo "are we even getting here?"
# done