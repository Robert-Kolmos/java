#!/bin/bash
cd /tmp
git clone https://github.com/Robert-Kolmos/java.git jsoniter
cd jsoniter/
mvn test > /dev/null
mvn org.jacoco:jacoco-maven-plugin:report
mv target/sites/jacoco/index.html test-coverage.html

