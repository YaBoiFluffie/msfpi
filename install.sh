sudo apt update -y && sudo apt upgrade -y
sudo apt -y install libffi-dev libgmp-dev ruby-dev build-essential git-core postgresql curl nmap gem libsqlite3-dev zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev locate libreadline6-dev libcurl4-openssl-dev git-core libssl-dev libyaml-dev openssl autoconf libtool ncurses-dev bison curl wget postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev
mkdir -p /opt/Apps
cd /opt/Apps
git clone --recursive https://github.com/rapid7/metasploit-framework
cd metasploit-framework
sudo gem install wirble sqlite3 bundler nokogiri
sudo gem install bundle
sudo bundle install
sudo systemctl enable postgresql
sudo systemctl start postgresql
# sudo service postgresql start
echo "export PATH=\$PATH:/opt/Apps/metasploit-framework/msfvenom" >> ~/.bashrc
echo "export PATH=\$PATH:/opt/Apps/metasploit-framework/msfconsole" >> ~/.bashrc
echo "export PATH=\$PATH:/opt/Apps/metasploit-framework/msfdb" >> ~/.bashrc
source ~/.bashrc
./msfdb init
./msfconsole
