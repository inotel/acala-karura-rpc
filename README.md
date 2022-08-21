# acala-karura
 
For the subquery Indexing part ( it will work only after acala/karura are synced)


you need to have docker-compose installed.
we run our installation in /opt
make sure to match permissions 
drwxrwxrwx  5 1000 1000  4096 Jun 17 09:41 acala
-rw-r--r--  1    0    0  7312 Aug 17 18:12 docker-compose.yml
drwxrwxrwx  2    0    0  4096 Aug 17 18:10 haproxy
drwxrwxrwx  4    0    0  4096 Jun 10 14:37 karura


=====

Deploy subquery

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -

apt update && sudo apt install yarn rush
apt-get install -y nodejs


work_dir="/opt/subquery_acala"
mkdir -p $work_dir
cd $work_dir
git clone https://github.com/AcalaNetwork/bodhi.js.git
cd $work_dir/bodhi.js/evm-subql/
cat project-acala-840000.yaml > project.yaml
rush update
rush build
yarn
yarn build



work_dir="/opt/subquery_karura"
mkdir -p $work_dir
cd $work_dir
git clone https://github.com/AcalaNetwork/bodhi.js.git
cd $work_dir/bodhi.js/evm-subql/
cat project-karura-1780000.yaml > project.yaml
rush update
rush build
yarn
yarn build



cd /opt
docker-compose up -d
docker-compose logs -f