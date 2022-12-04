#!/bin/zsh
cd ~
pwd
DIR="/Users/wucaiqiang/temp_workspace/spring-demo/bin"
echo $DIR
echo "this dir is ${DIR}"
for((i=0;i<1;i++));do
  echo $i;
done

# shellcheck disable=SC2045
for lt in $(ls $DIR);do
  echo $lt;
  done
str=(abc cdm);
echo ${#str[@]}

# shellcheck disable=SC2068
echo ${arrt[@]}
<< eof
echo "wwwwwww"
eof
echo "参数，$#"
echo "参数，$*"
echo "参数，${0}"
echo "参数，${1}"
echo "参数，${2}"

A["site"]="site_value";
# shellcheck disable=SC2068
echo ${#A[@]};

a=10
b=20
result=`expr ${a} + ${b}`
echo "a+b= ${result}"
if [ $a != $b ]; then
    echo true;
    else echo false;
fi

att1="wu"
att2="cai"
if test $att1 = $att2;
then
   echo "====true";
else echo "====false";
fi

# shellcheck disable=SC1072
a=10
b=10
if (( ${a} == ${b} ));
then
  echo "-----true"
else
  echo "-----false"
fi

case $1 in
wu)echo "cai";;
*)echo "$1";;
esac

echo "======"



