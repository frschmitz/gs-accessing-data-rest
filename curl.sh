#!/bin/sh
curl -u user:$1 http://localhost:8080/people
curl -u user:$1 -X PUT -H "Content-Type:application/json" -d '{ "firstName": "user", "lastName": "user" }' http://localhost:8080/people/1
curl -u user:$1 -X PUT -H "Content-Type:application/json" -d '{ "firstName": "Bilbo", "lastName": "Baggins" }' http://localhost:8080/people/2
curl -u user:$1 http://localhost:8080/people/search/findByQSelect
