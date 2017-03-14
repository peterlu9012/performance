#!/bin/bash
nohup /home/ptuser/JMeter1/Wrapper_Scripts/Browse_Biz_US.sh $1 $2 $3 &
nohup /home/ptuser/JMeter2/Wrapper_Scripts/Transac_Biz_US_poc2.sh $3 &
