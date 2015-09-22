#!/bin/bash

export WORKING_DIR="$( dirname "${BASH_SOURCE[0]}" )"
export TOMCAT_DIR="/opt/tomcat"

cd $TOMCAT_DIR
./bin/shutdown.sh stop 10 -force

rm -rf work/*
rm -rf temp/*
rm -rf shared/lib/*
rm -rf common/lib/*
rm -rf logs/*
pushd webapps > /dev/null
rm -rf site* cms*
popd > /dev/null

cp -r $WORKING_DIR/shared/lib/* shared/lib/
cp -r $WORKING_DIR/common/lib/* common/lib/
cp -r $WORKING_DIR/webapps/* webapps/


./bin/startup.sh

tail -f /opt/tomcat/logs/catalina.out
