# acala-karura
 
For the subquery Indexing part ( it will work only after acala/karura are synced)


You need to have docker-compose installed.

https://docs.docker.com/engine/install/ubuntu/


We run our installation on ubuntu in /opt

Make sure to match permissions


chown 1000:1000 acala

chmod 777 acala

chmod 777 karura

chmod 777 haproxy

=====
Deploy subquery
Check subquery_deploy.sh


=====
Make sure to populate haproxy/inotel.acl with your needed ip's


Run acala / karura:


cd /opt

docker-compose up -d

docker-compose logs -f

