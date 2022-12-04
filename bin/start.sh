workdir=`cd "$(dirname "$0")"; cd ..; pwd`
echo "start.sh 当前目录为 $workdir"
cd $workdir/bin
sh bootstart.sh start
