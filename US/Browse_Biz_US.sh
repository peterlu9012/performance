#!/bin/bash

if [ $# -lt 3 ]
then 
	echo "Please enter JMeter 'Users' 'Rampup' and 'Duration' values in this sequence"
	echo "Usage: $0 [Users] [Rampup] [Duration]"
	exit
fi

filename=`date +"%m%d%Y%H%M%S"`

sh /home/ptuser/JMeter1/apache-jmeter-2.11/bin/jmeter.sh -Djava.library.path=/home/ptuser/JMeter1/jre1.7.0_25/bin/ -n -t "/home/ptuser/JMeter1/JMeter_Scripts/Hybris/Browse_Biz_US.jmx" -JUsers=$1 -JRampup=$2 -JDuration=$3 -l "/home/ptuser/JMeter1/Test_Results/Perf_Prod/Hybris/Perf_Prod_BrowseBiz_$1u$3m_201_$filename.jtl"
