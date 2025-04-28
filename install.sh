sudo apt update -y && sudo apt upgrade -y
sudo apt -y install libffi-dev libgmp-dev ruby-dev build-essential git-core postgresql curl nmap gem libsqlite3-dev zlib1g zlib1g-dev libxml2 libxml2-dev libxslt-dev locate libreadline6-dev libcurl4-openssl-dev git-core libssl-dev libyaml-dev openssl autoconf libtool ncurses-dev bison curl wget postgresql postgresql-contrib libpq-dev libapr1 libaprutil1 libsvn1 libpcap-dev
cd /opt
git clone --recursive https://github.com/rapid7/metasploit-framework
cd metasploit-framework
sudo gem install wirble sqlite3 bundler nokogiri
sudo gem install bundle
sudo bundle install
sudo service postgresql start
./msfdb init
./msfconsole
