#!/bin/bash
cd /tmp
git clone https://github.com/Robert-Kolmos/java.git jsoniter
cd jsoniter
git remote show origin | grep "Fetch URL:" > test-execution.txt
echo "SHA: ($git rev-parse HEAD)" >> test-execution.txt
time mvn test >> test-execution.txt

