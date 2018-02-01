# Instala Filebeat en ubuntu siguiendo a
# doc oficial en: https://www.elastic.co/guide/en/beats/filebeat/current/setup-repositories.html

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
sudo apt-get update && sudo apt-get install filebeat

sudo mkdir /tmp/filebeat_bak
sudo cp /etc/filebeat/filebeat.yml ./filebeat.yml.bak /tmp/filebeat_bak/filebeat.yml.bak
sudo cp ./filebeat.yml /etc/filebeat/filebeat.yml

echo "_______________________________________"
echo "filebeat.yml"
echo "_______________________________________"

sudo cat /etc/filebeat/filebeat.yml

echo "_______________________________________"
