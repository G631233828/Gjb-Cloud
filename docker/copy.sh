#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20230223.sql ./mysql/db
cp ../sql/ry_config_20220929.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../gjb-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy gjb-gateway "
cp ../gjb-gateway/target/gjb-gateway.jar ./gjb/gateway/jar

echo "begin copy gjb-auth "
cp ../gjb-auth/target/gjb-auth.jar ./gjb/auth/jar

echo "begin copy gjb-visual "
cp ../gjb-visual/gjb-monitor/target/gjb-visual-monitor.jar  ./gjb/visual/monitor/jar

echo "begin copy gjb-modules-system "
cp ../gjb-modules/gjb-system/target/gjb-modules-system.jar ./gjb/modules/system/jar

echo "begin copy gjb-modules-file "
cp ../gjb-modules/gjb-file/target/gjb-modules-file.jar ./gjb/modules/file/jar

echo "begin copy gjb-modules-job "
cp ../gjb-modules/gjb-job/target/gjb-modules-job.jar ./gjb/modules/job/jar

echo "begin copy gjb-modules-gen "
cp ../gjb-modules/gjb-gen/target/gjb-modules-gen.jar ./gjb/modules/gen/jar

