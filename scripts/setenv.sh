export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export JRE_HOME="/usr/lib/jvm/java-8-oracle/jre"
export CATALINA_PID="${CATALINA_BASE}/work/catalina.pid"

REP_OPTS="-Drepo.config=file:$CATALINA_BASE/conf/repository.xml -Drepo.bootstrap-true"
L4J_OPTS="-Dlog4j.configuration=file:$CATALINA_BASE/conf/log4j.xml"
JVM_OPTS="-server -Xms512m -Xms128m -Djava.security.egd=file:/dev/./urandom"

CATALINA_OPTS="$JVM_OPTS $REP_OPTS $L4J_OPTS"
