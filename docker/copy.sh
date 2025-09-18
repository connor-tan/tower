#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20250523.sql ./mysql/db
cp ../sql/ry_config_20250224.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../tower-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy tower-gateway "
cp ../tower-gateway/target/tower-gateway.jar ./ruoyi/gateway/jar

echo "begin copy tower-auth "
cp ../tower-auth/target/tower-auth.jar ./ruoyi/auth/jar

echo "begin copy tower-visual "
cp ../tower-visual/tower-monitor/target/tower-visual-monitor.jar  ./ruoyi/visual/monitor/jar

echo "begin copy tower-modules-system "
cp ../tower-modules/tower-system/target/tower-modules-system.jar ./ruoyi/modules/system/jar

echo "begin copy tower-modules-file "
cp ../tower-modules/tower-file/target/tower-modules-file.jar ./ruoyi/modules/file/jar

echo "begin copy tower-modules-job "
cp ../tower-modules/tower-job/target/tower-modules-job.jar ./ruoyi/modules/job/jar

echo "begin copy tower-modules-gen "
cp ../tower-modules/tower-gen/target/tower-modules-gen.jar ./ruoyi/modules/gen/jar

