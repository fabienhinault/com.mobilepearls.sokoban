#!/usr/bin/env sh
##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use GRADLE_OPTS and _JAVA_OPTIONS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

APP_NAME="Gradle"
# Resolve links - $0 may be a symlink
PRG="$0"

while [ -h "$PRG" ] ; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`/"$link"
  fi
done

PRGDIR=`dirname "$PRG"`
EXECUTABLE_DIR=`cd "$PRGDIR" >/dev/null; pwd`

CLASSPATH="$EXECUTABLE_DIR/gradle/wrapper/gradle-wrapper.jar"

if [ -z "$JAVA_HOME" ] ; then
  JAVACMD=java
else
  JAVACMD="$JAVA_HOME/bin/java"
fi

if [ -z "$JAVA_HOME" ] ; then
  # Try to find java in PATH
  if [ -x "$JAVACMD" ] ; then
    :
  else
    echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH."
    exit 1
  fi
fi

exec "$JAVACMD" $DEFAULT_JVM_OPTS -cp "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"