#!/usr/bin/env sh
cd /tmp
if [ ! -f google-java-format-1.7-all-deps.jar ]
then
    curl -LJO "https://github.com/google/google-java-format/releases/download/google-java-format-1.7/google-java-format-1.7-all-deps.jar"
    chmod 755 google-java-format-1.7-all-deps.jar
fi
cd -

changed_java_files=$(git diff --cached --name-only --diff-filter=ACMR | grep ".*java$" )
echo $changed_java_files
java -jar /tmp/google-java-format-1.7-all-deps.jar --replace $changed_java_files
