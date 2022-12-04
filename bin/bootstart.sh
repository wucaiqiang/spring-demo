#!/bin/zsh
workdir=`cd "$(dirname "$0")"; cd ..; pwd`
echo "bootstart.sh 当前目录为 $workdir"
cd $workdir/bin
LOG_PATH=/data/cnc/logs/all.log
JAR_FILE=/data/cnc/lib/spring-demo-0.0.1-SNAPSHOT.jar
pid=0
JVM_OPTS=""
checkpid(){
    pid=`ps -ef |grep $JAR_FILE |grep -v grep |awk '{print $2}'`
}
start(){
  checkpid
  if [ ! -n "$pid" ]; then
    JAVA_CMD="nohup java -jar $JAR_FILE >> $LOG_PATH 2>&1 &"
    # su - $RUNNING_USER -c "$JAVA_CMD"
    echo "$JAVA_CMD"
    eval "$JAVA_CMD"
    # echo "---------------------------------"
    # echo "启动完成，按CTRL+C退出日志界面即可>>>>>"
    # echo "---------------------------------"
    sleep 2s
    # tail -f $LOG_PATH
  else
      echo "runing PID: $pid"
  fi
}
stop(){
    checkpid
    if [ ! -n "$pid" ]; then
     echo "not runing"
    else
      echo "stoping..."
      kill -15 $pid
      ##循环等应用优雅结束
      until [ ! -n "$pid" ]
      do
        checkpid
        echo "stoping gracefully..."
        sleep 2s
      done
    fi
    echo "stoped"
}
restart(){
    stop
    sleep 3s
    start
}
case $1 in
          start) start;;
          stop)  stop;;
          restart)  restart;;
              *) start;;
esac
