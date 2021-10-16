#!/bin/bash
for i in {1..500}
do
   sitename="sitea-$i"
   echo " "
   curl -X POST http://openshift-dna-demo-mysql-git-my-mariadb-galera-app.apps.ocpsitea.sandbox40.opentlc.com/api/employees  -H 'Content-Type: application/json'  -d '{"name":"'"$sitename"'","city":"my_citya"}'
done

