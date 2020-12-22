#!/bin/sh

CLASSPATH=
PROGRAM=CalcNewValues.java DisplayValues.java GetBurnRate.java
cd src
for i in `ls ../lib/*.jar`
do
	CLASSPATH=${CLASSPATH}:${i}
done

javac -classpath ".:${CLASSPATH}" $PROGRAM

if [ $? -eq 0 ]
then
	echo "compile worked!"
fi
