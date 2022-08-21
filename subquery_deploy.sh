
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -

apt update && apt install yarn rush
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
