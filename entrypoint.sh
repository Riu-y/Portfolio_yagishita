set -e
#既存に残っているserver.pidの削除
rm -f /Portfolio_yagishita/tmp/pids/server.pid

#DockerfileのCMDを実行
exec "$@"
