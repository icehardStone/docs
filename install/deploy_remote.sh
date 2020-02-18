systemctl stop firewalld
systemctl disable firewalld
firewall-cmd -state
sudo yum install epel* -y
yum --enablerepo=epel -y install xrdp
sudo systemctl start xrdp
sudo systemctl enable xrdp
sudo ip route
