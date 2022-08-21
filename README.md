# acala-karura
 
For the subquery Indexing part ( it will work only after acala/karura are synced)


You need to have docker-compose installed.
https://docs.docker.com/engine/install/ubuntu/


We run our installation in /opt
make sure to match permissions

chown 1000:1000 acala
chmod 777 acala
chmod 777 karura
chmod 777 haproxy

=====
Deploy subquery
Check subquery_deploy.sh


Run acala / karura:

cd /opt
docker-compose up -d
docker-compose logs -f
