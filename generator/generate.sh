if [ "x$1" == "x" ]
then
  echo "Error: no image name specified!"
  echo "Usage: $0 [your-image-name]"
else
  echo -n -e "Are you sure to generate \"$1\"?(y/N) "
  read
  if [ "$REPLY" == "y" ]
  then
    echo I guess $REPLY keeps you busy!
    basepath=$(cd `dirname $0`; pwd)
    ansible-playbook $basepath/generate-playbook.yml -c local --extra-vars "image=$1 base_path=$basepath"
  else
    echo Good choice!
  fi
fi
