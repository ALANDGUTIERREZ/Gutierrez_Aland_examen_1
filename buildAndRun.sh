#!/bin/sh
mvn clean package && docker build -t com.mycompany/GUTIERREZ_ALAND_examen_1 .
docker rm -f GUTIERREZ_ALAND_examen_1 || true && docker run -d -p 9080:9080 -p 9443:9443 --name GUTIERREZ_ALAND_examen_1 com.mycompany/GUTIERREZ_ALAND_examen_1