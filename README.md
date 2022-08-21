# acala-karura
 
For the subquery Indexing part ( it will work only after acala/karura are synced)


You need to have docker-compose installed.
https://docs.docker.com/engine/install/ubuntu/


We run our installation in /opt
make sure to match permissions

drwxrwxrwx  5 1000 1000  4096 Jun 17 09:41 acala

-rw-r--r--  1    0    0  7312 Aug 17 18:12 docker-compose.yml

drwxrwxrwx  2    0    0  4096 Aug 17 18:10 haproxy

drwxrwxrwx  4    0    0  4096 Jun 10 14:37 karura



=====
Deploy subquery
Check subquery_deploy.sh


Run acala / karura:

cd /opt
docker-compose up -d
docker-compose logs -f
