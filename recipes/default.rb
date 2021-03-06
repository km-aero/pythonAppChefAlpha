#
# Cookbook:: pythonAppChefAlpha
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'packer'

package 'python3-pip'

bash 'install_requirements' do
  code <<-EOH
    sudo pip3 install atomicwrites==1.3.0
    sudo pip3 install attrs==19.1.0
    sudo pip3 install beautifulsoup4==4.8.0
    sudo pip3 install certifi==2019.6.16
    sudo pip3 install chardet==3.0.4
    sudo pip3 install idna==2.8
    sudo pip3 install importlib-metadata==0.19
    sudo pip3 install more-itertools==7.2.0
    sudo pip3 install packaging==19.1
    sudo pip3 install pluggy==0.12.0
    sudo pip3 install py==1.8.0
    sudo pip3 install pyparsing==2.4.2
    sudo pip3 install pytest==5.1.0
    sudo pip3 install requests==2.22.0
    sudo pip3 install six==1.12.0
    sudo pip3 install soupsieve==1.9.2
    sudo pip3 install urllib3==1.25.3
    sudo pip3 install wcwidth==0.1.7
    sudo pip3 install zipp==0.5.2
  EOH
end

bash 'install_java' do
  code <<-EOH
    sudo apt-get install openjdk-8-jdk openjdk-8-jre -y
  EOH
end

bash 'java_env_vars' do
  code <<-EOH
    cd /etc
    sudo chmod 777 environment
    cat >> /etc/environment <<EOL
    JAVA_HOME= /usr/lib/jvm/java-8-openjdk-amd64
    JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
    EOL
    sudo chmod 644 environment
  EOH
end

bash 'install_chef' do
  code <<-EOH
    wget https://packages.chef.io/files/stable/chef-workstation/0.17.5/ubuntu/18.04/chef-workstation_0.17.5-1_amd64.deb
    sudo dpkg -i chef-workstation_*.deb
    sudo rm chef-workstation_*.deb
  EOH
end

directory '/home/ubuntu/Downloads' do
  mode '0007'
  action :create
end

directory '/home/jenkins' do
  mode '0777'
  action :create
end
