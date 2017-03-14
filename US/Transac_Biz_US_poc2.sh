#!/bin/bash

if [ $# -lt 1 ]
then 
	echo "Please enter JMeter 'Duration' value in this sequence"
	echo "Usage: $0 [Duration]"
	exit
fi

filename=`date +"%m%d%Y%H%M%S"`

sh /home/ptuser/JMeter2/apache-jmeter-2.11/bin/jmeter.sh -Djava.library.path=/home/ptuser/JMeter2/jre1.7.0_25/bin/ -n -t "/home/ptuser/JMeter2/JMeter_Scripts/Hybris/Transac_Biz_US_poc2.jmx" -Jduration=$1 -l "/home/ptuser/JMeter2/Test_Results/Perf_Prod/Hybris/Perf_Prod_Trnsac_$1m_235_$filename.jtl"
