ssh-keygen
ssh-copy-id ubuntu@172.31.25.230
ssh-copy-id ubuntu@172.31.25.57
sudo apt-get update
sudo apt-get insatll -y software-propertice-common
sudo apt-get insatll -y software-properties-common
sudo apt-get install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get install -y ansible
cd /etc/ansible/
ls
sudo vim hosts
ls -la
cd
ansible all -a 'ls -la'
ansible all -a 'date'
ssh-copy-id ec2-user@172.31.26.44
ansible all -a 'date'
sudo vim hosts
sudo vim /etc/hosts
sudo vim /etc/ansible/hosts
ansible all -a 'date'
free -m
ansible all -i /etc/ansible/hosts -m -a 'free -m'
ansible all -i /etc/ansible/hosts -m command -a 'free -m'
ansible all -i /etc/ansible/hosts -a 'free -m'
sudo vim /etc/ansible/hosts
vim myinventory
ls
cat myinventory
ansible all -i myinventory -a 'free -m'
ansible all -m command -a 'free -m'
sudo vim /etc/ansible/hosts
ansible all -m command -a 'free -m'
exit
free -m
free -m > file10
cat file10
ansible all -m 'free -m > file10'
sudo vim /etc/ansible/hosts
ansible all -m 'free -m > file10'
ansible all -m shell -a 'free -m > file10'
exit
ssh 172.31.25.230
useradd sai
sudo useradd sai
sudo passwd sai
sudo vim /etc/paaswd
ssh 172.31.25.230
sudo useradd chandu
sudo passwd chandu
sudo vim /etc/paaswd
sudo vim /etc/passwd
ansible all -m user -a 'name=chandu password=123' -b
ssh 172.31.25.230
ansible all -m user -a 'name=ram password=123 uid=2222 comment="devops" shell=/bin/bash home=/tmp/ram' -b
ssh 172.31.25.230
ansible all -m file -a 'name=/tmp/file state=touch'
ssh 172.31.25.230
ansible all -m file -a 'name=/tmp/dir1 state=directory'
ssh 172.31.25.230
ansible all -m file -a 'name=/tmp/dir1 state=absent'
ssh 172.31.25.230
ansible all -m file -a 'name=/tmp/dir1 state=touch mode=770 owner=chandu group=ram' -b
ssh 172.31.25.230
cat > file20
ansible all -m copy -a 'src=file20 dest=/tmp'
ssh 172.31.25.230
mkdir -p d1/d2/d3/d4
ansible all -m copy -a 'src=di dest=/tmp'
ansible all -m copy -a 'src=d1 dest=/tmp'
ssh 172.31.25.230
ansible all -m copy -a 'content="wel hyd" dest=/tmp/file20'
ssh 172.31.25.230
ansible all -m copy -a 'src=file20 dest=/tmp owner=root group=ram mode=740' -b
ssh 172.31.25.230
ansible all -m apt -a 'name=git state=present' -b
ansible all -m apt -a 'name=git state=absent' -b
ssh 172.31.25.230
ansible all -m apt -a 'name=tomcat9 state=present update_cache=yes' -b
ansible all -m service -a 'name=tomcat9 state=stopped' -b
ansible all -m service -a 'name=tomcat9 state=started' -b
ansible all -m get_url -a 'url=f40374910de94c9c1aafbd0fd190156e7f6afad6dc1534e1b55d20e125156be5 dest=/tmp' -b
ansible all -m apt -a 'name=git state=present' -b
ansible all -m get_url -a 'url=f40374910de94c9c1aafbd0fd190156e7f6afad6dc1534e1b55d20e125156be5 dest=/tmp' -b
ansible all -m get_url -a 'url=https://get.jenkins.io/war-stable/2.387.3/jenkins.war dest=/tmp' -b
ssh 172.31.25.230
ansible all -m uri -a 'url=http://google.com status_code=200'
ansible all -m uri -a 'url=http://googuhuuyuihle.com status_code=200'
ansible all -m git -a 'repo=https://github.com/intelliqittrainings/maven.git dest=/tmp/mygit'
ssh 172.31.25.230
ansible all -m replace -a 'regexp=8080 replace=9090 path=/etc/tomcat9/server.xml' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m fetch -a 'src=/etc/passwd dest=/tmp'
cd /tmp
ls
cd 172.31.25.230
ls
cd ..
cd 172.31.25.57
ls
cd ..
cd
ansible all -m apt -a 'name=apache2 state=present update_cache=yes' -b
ansible all -m copy -a 'content="welcome chandu" dest=/var/www/html/index.html' -b
ansible all -m service -a 'name=apache2 state=restarted' -b
ansible all -m uri -a 'url=http://172.31.25.57 status_code=200'
ansible all -m uri -a 'url=http://172.31.25.230 status_code=200'
vim tomcat-users.xml
cat tomcat-users.xml
ansible all -m copy -a 'src=tomcat-users.xml dest=/etc/tomcat9' -b
ansible all -m replace -a 'regexp=9090 replace=8080 path=/etc/tomcat9/server.xml' -b
ansible all -m service -a 'name=tomcat9 state=restarted' -b
ansible all -m uri -a 'url=http://172.31.25.230 status_code=200'
ansible all -m uri -a 'url=http://172.31.25.57 status_code=200'
cd playbooks/
cd playbook/
vim playbook1.yml
ansible-playbook playbook1.yml -b
vim playbook1.yml
ansible-playbook playbook1.yml -b
ssh 172.31.25.230
ls
vim playbook2.yml
ansible-playbook palybook2.yml
vim playbook2.yml
ansible-playbook palybook2.yml
vim playbook2.yml
ansible-playbook palybook2.yml
ssh 172.31.25.57
ansible-playbook palybook2.yml
ls
vim playbook3.yml
pwd
cp tomcat-users.xml playbook/
cd playbook/
cd playbooks/
cp tomcat-users.xml playbooks/
vim playbook3.yml
ansible-playbook palybook3.yml
vim playbook3.yml
cd playbooks/
mkdir playbooks
cd playbooks/
ls
vim playbook1.yml
ansible-playbook playbook1.yml
vim playbook1.yml
ansible-playbook playbook1.yml
ansible-playbook playbook3.yml
cd
ansible-playbook playbook1.yml
vim playbook1.yml
cd playbook/
cd playbooks/
ls
vim playbook2.xml
ansible-playbook playbook2.yml
ansible-playbooks playbook2.yml
ls
ansible-playbooks playbook2.yml -b
ansible-playbook playbook2.yml -b
cd
ansible-playbook playbook2.yml -b
vim playbook2.yml
ansible-playbook playbook2.yml -b
vim playbook2.yml
cd playbooks/
vim playbook2.yml
cd
vim playbook2.yml
cd playbooks/
vim playbook2.yml
ansible-playbook playbook2.yml
ls
vim playbook5.yml
ansible-playbook playbook5.yml
vim playbook6.yml
ansible-playbook playbook6.yml
ansible-playbook playbook6.yml -b
cd
pwd
cp tomcat-users.xml playbooks/
cd playbooks
ls
ansible-playbook playbook6.yml -b
vim playbook6.yml
ansible-playbook playbook6.yml -b
vim playbook6.yml
ansible-playbook playbook6.yml -b
vim playbook5.yml
ansible-playbook playbook5.yml -b
vim playbook5.yml
cd playbooks/
ls
vim palybook1.yml
ansible-playbook palybook1.yml -b
ssh 172.31.25.230
vim palybook4.yml
ls
vim palybook5.yml
vim palybook6.yml
cd
ls
vim palybook3.yml
vim palybook2.yml
vim palybook1.yml
cd playbooks/
vim palybook6.yml
ansible-playbook palybook6.yml -b
cd playbooks/
ls
vim playbook1.yml
las
ls
vim palybook1.yml
vim palybook5.yml
rm palybook5.yml
ls
vim palybook4.yml
rm palybook4.yml
vim plyybook2.yml
vim playbook2.yml
vim playbook6.yml
ls
rm palyboos6.yml
rm palybook6.yml
ls
vim playbook6.yml
rm plyybook2.yml
ls
vim playbook6.yml
vim playbook1.yml
rm playbook1.yml
ls
rm playbook5.yml
vim playbook2.yml
ls
vim palybook1.yml
vim palybook6.yml
vim playbook6.yml
ls
rm palybook6.yml
ls
cd playbooks/
ls
vim playbook4.yml
ansible-playbook playbook4.yml --extra-vars "a=git b=present c=no" -b
ansible-playbook playbook4.yml --extra-vars "a=tree b=present c=no" -b
vim playbook5.yml
ansible-playbook playbook5.yml --extra-vars "a=ramy b=ramy c=/tmp/ramy d=/tmp/ram e=touch" -b
vim playbook5.yml
ansible-playbook playbook5.yml --extra-vars "a=ramy b=ramy c=/tmp/ramy d=/tmp/ram e=touch" -b
sudo /etc/passwd
ssh 172.31.25.230
ansible-playbook playbook5.yml --extra-vars "a=raj b=ramy c=/tmp/raj d=/tmp/raj/dir1 e=directory" -b
ssh 172.31.25.230
vim playbook3.yml
ansible-playbook playbook3.yml -b
ansible-playbook playbook3.yml --extra-vars "a=git" -b
ssh-copy-id ubuntu@172.31.15.128
ssh-copy-id ubuntu@172.31.15.140
sudo vim /etc/ansible/hosts
ansible all -a 'date'
sudo vim /etc/ansible/hosts
ansible all -a 'date'
ansible bdserver -a 'date'
ansible cmserver -a 'date'
ansible ltserver -a 'date'
vim playbook1.yml
ls
vim playbook1.yml
ls
vim palybook1.yml
ansible-playbook palybook1.yml -b
rm playbook1.yml
sudo vim /etc/ansible/hosts
ansible server -a 'date'
pwd
mkdir group_vars
ls
cd group_vars/
ls
vim bdserver
ls
cat bdserver
cd ..
vim playbook7.yml
ansible-playbook playbook7.yml -b
vim playbook7.yml
vim bdserver
ls
cat bdserver
mkdir host_vars
ls
vim 172.31.15.140
vim playbook8.yml
ansible-playbook playbook8.yml
vim playbook8.yml
cd host_vars
vim playbook9.yml
cd..
cd ..
vim playbook8.yml
vim 172.31.15.140
cd host_vars
vim 172.31.15.140
cd ..
vim playbook8.yml
ansible-playbook playbook8.yml -b
cd playbooks/
vim 172.31.15.140
ls
rm 172.31.15.140
ls
cd host_vars/
vim 172.31.15.140
pwd
ls
cd ..
playbook8.yml
vim playbook8.yml
ansible-playbook playbook8.yml
vim playbook8.yml
cd host_vars
vim 172.31.15.140
cd ..
ansible-playbook playbook8.yml
ansible-playbook playbook8.yml -b
ssh 172.31.15.140
cd playbooks/
ls
git init
git add .
git commit -m "a"
git remote add origin https://github.com/chandrapantala/ansible.git
git push -u origin master
git commit -m "a"
git remote add origin https://github.com/chandrapantala/ansible.git
git push -u origin master
git remote add origin https://github.com/chandrapantala/ansible.git
git push -u origin master
cd playboos/
cd playbooks/
git remote add origin https://github.com/chandrapantala/ansible.git
git push -u origin master
cd playbooks/
ls
vim playbook9.yml
ansible-playbook playbook9.yml -b
sudo vim /etc/ansible/hosts
ansible-playbook playbook9.yml -b
cd ..
exit
cd playbooks/
ssh 172.31.25.57
cd ..
exit
ssh-copy-id ubuntu@172.31.1.228
cd playbooks/
vim playbook9.yml
ansible-playbook playbook9.yml -b
sudo vim /etc/ansible/hosts
ansible-playbook playbook9.yml -b
vim playbook9.yml
ansible-playbook playbook9.yml -b
vim playbook9.yml
ansible-playbook playbook9.yml -b
ls
vim playbook2.yml
cp playbook2.yml playbook10.yml
vim playbook10.yml
ansible-playbook playbook10.yml -b
vim playbook10.yml
ansible-playbook playbook10.yml -b
vim playbook10.yml
ansible-playbook playbook10.yml -b
vim playbook10.yml
ansible-playbook playbook10.yml -b
vim playbook3.yml
ls
vim playbook5.yml
vim playbook8.yml
vim playbook4.yml
vim playbook9.yml
ansible-playbook playbook9.yml -b
vim playbook9.yml
ansible-playbook playbook9.yml -b
vim playbook9.yml
ansible-playbook playbook9.yml -b
vim playbook9.yml
ansible-playbook playbook9.yml -b
vim playbook9.yml
ansible-playbook playbook9.yml -b
vim playbook9.yml
ansible-playbook playbook9.yml -b
vim playbook11.yml
ansible-playbook playbook11.yml -b
vim playbook11.yml
ansible-playbook playbook11.yml -b
vim playbook11.yml
ansible-playbook playbook11.yml -b
vim playbook12.yml
ansible-playbook playbook12.yml -b
vim playbook12.yml
ansible-playbook playbook12.yml -b
vim playbook12.yml
ansible-playbook playbook12.yml -b
vim playbook12.yml
ls
vim playbook13.yml
ansible-playbook playbook13.yml -b
ansible-playbook playbook13.yml --tags="tagged" -b
ansible-playbook playbook13.yml --tags="untagged" -b
ansible-playbook playbook13.yml --tags="git_install" -b
git init
git add .
ssh 172.31.25.230
https://github.com/chandrapantala/ansible.git
git add .
git commit -m "a"
git remote add origin https://github.com/chandrapantala/ansible.git~
git push -u origin master
ssh ec2-user@172.31.26.22
cd playbook/
cd playbooks/
ssh-copy-id ec2-user@172.31.26.22
sudo vi /etc/ansible/hosts
ansible all -a 'date'
vim playbook15.yml
ansible-playbook playbook15.yml -b
vim playbook15.yml
ansible-playbook playbook15.yml -b
ssh-copy-id ubuntu@172.31.26.158
sudo vim /etc/ansible/hosts
vim playbook16.yml
ansible-playbook playbook16.yml -b
vim playbook16.yml
ansible-playbook playbook16.yml -b
vim playbook16.yml
ansible-playbook playbook16.yml -b
ls
cd playbooks/
ansible-vault create playbook17.yml
ansible-vault view playbook17.yml
ansible-vault edit playbook17.yml
ls
vim playbook3.yml
ansible-vault encrypt playbook3.yml
ansible-vault view playbook3.yml
ansible-vault edit playbook3.yml
ansible-playbook playbook3.yml --ask-vault-pass
ansible-vault edit playbook3.yml
ansible-playbook playbook3.yml --ask-vault-pass
ansible-vault edit playbook3.yml
ansible-vault decrypt playbook3.yml
vim playbook3.yml
ansible-playbook playbook3.yml -b
vim playbook18.yml
ansible-playbook playbook18.yml -b
git init
git add .
git commit -m "d"
git push
ssh 172.31.1.228
exit
cd playbooks/
vim playbook22.yml
ansible-playbook playbook22.yml -b
vim playbook22.yml
ansible-playbook playbook22.yml -b
vim playbook22.yml
ansible-playbook playbook22.yml -b
ls
exit
cd playbooks/
ls
vim playbook17.yml
ansible-vault view playbook17.yml
vim playbook19.yml
ssh-copy-id ec2-user@172.31.19.162
sudo vim /etc/ansible/hosts
ansible all -a 'date'
vim playbook19.yml
ansible-playbook playbook19.yml
vim playbook19.yml
ansible-playbook playbook19.yml -b
vim playbook19.yml
ansible-playbook playbook19.yml -b
vim playbook19.yml
ansible-playbook playbook19.yml -b
vim playbook20.yml
ansible-playbook playbook20.yml -b
vim playbook20.yml
ansible 172.31.1.228 -m file -a 'name=/home/ubuntu/f1 state=directory'
ansible-playbook playbook20.yml -b
vim playbook20.yml
ansible-playbook playbook20.yml -b
vim playbook20.yml
ansible-playbook playbook20.yml -b
vim playbook21.yml
ansible-playbook playbook21.yml -b
vim playbook21.yml
ansible-playbook playbook21.yml -b
cd playbooks/
sudo vim /etc/ansible/hosts
ls
vim playbook23.yml
ansible-playbook playbook23.yml -b
vim playbook23.yml
ansible-playbook playbook23.yml -b
vim playbook23.yml
ansible-playbook playbook23.yml -b
vim ci&cd.yml
vim cicd.yml
ansible-playbook cicd.yml -b
vim cicd.yml
ansible-playbook cicd.yml -b
vim cicd.yml
ansible-playbook cicd.yml -b
vim cicd.yml
cd /tmp
ls
cd 172.31.25.230/
ls
cd dev-git/
ls
cd webapp/
ls
cd target/
ls
pws
pwd
cd
cd playbooks/
vim cicd.yml
ansible-playbook cicd.yml -b
vim cicd.yml
ansible-playbook cicd.yml -b
vim cicd.yml
ansible-playbook cicd.yml -b
vim cicd.yml
ansible-playbook cicd.yml -b
vim cicd.yml
ansible-playbook cicd.yml -b
vim cicd.yml
ansible-playbook cicd.yml -b
vim playbook24.yml
vim playbook25.yml
ansible-playbook playbook25.yml -b
vim playbook25.yml
ansible-playbook playbook25.yml -b
vim playbook25.yml
ansible-playbook playbook25.yml -b
vim playbook24.yml
ansible-playbook playbook25.yml -b
vim playbook25.yml
ansible-playbook playbook25.yml -b
rm playbook24.yml
ls
rm playbook25.yml
ls
cd playbooks/
ls
cd group_vars/
ls
bdserver/
cd bdserver/
cd ..
cd bdserver/
cd group_vars/
cd playbooks/
cd group_vars/
ls
bdserver/
cd ..
sudo vim /etc/ansible/hosts
cd group_vars/
ls
bdserver/
cd ..
vim bdserver
cd group_vars/
ls
cd bdserver/
cd bdserver
cd ..
cd bdserver/
vim bdserver
ls
sudo vim /etc/ansible/hosts
cd group_vars/
ls
cd ..
vim install.yml
vim index.yml
vim install.yml
vim restart.yml
vim pause.yml
vim responce.yml
vim playbook25.yml
ansible-playbook playbook25.yml -b
vim playbook25.yml
ansible-playbook playbook25.yml -b
vim playbook25.yml
ansible-playbook playbook25.yml -b
cd playbooks/
cd group_vars
ls
sudo vim bdserver
cd ..
vim playbook25.yml
ansible-playbook playbook25.yml -b
vim install.yml
vim playbook25.yml
cd group_vars/
sudo vim bdserver
cd ..
vim install.yml
sudo vim bdserver
rm bdserver
ls
cd group_vars/
ls
sudo vim bdserver
cd ..
vim playbook25.yml
cd group_vars/
sudo vim bdserver

ansible-playbook playbook25.yml -b
vim playbook25.yml
vim apache.yml
ansible-playbook playbook25.yml -b
vim playbook25.yml
ansible-playbook playbook25.yml -b
vim apache.yml
vim playbook25.yml
ansible-playbook playbook25.yml -b
vim playbook25.yml
ansible-playbook playbook25.yml -b
vim playbook25.yml
ansible-playbook playbook25.yml -b
exit
cd playbooks/
ls
sudo vim /etc/ansible/hosts
ansible-playbook apache.yml
vim apache.yml
vim playbook25.yml
ansible-playbook playbook25.yml -b
vim apache.yml
vim playbook25.yml
ansible-playbook playbook25.yml -b
rm apache.yml
ls
vim git2.yml
vim playbook25.yml
ansible-playbook playbook25.yml -b
ls
vim git2.yml
vim playbook2.yml
vim playbook3.yml
ansible-playbook playbook3.yml -b
vim playbook25.yml
ansible-playbook playbook3.yml -b
ansible-playbook playbook25.yml -b
rm playbook25.yml
rm git2.yml
ls
vim install.yml
vim pl2.yml
ansible-playbook pl2.yml -b
vim pl2.yml
ansible-playbook pl2.yml -b
vim pl2.yml
ansible-playbook pl2.yml -b
ls
vim install.yml
vim pl2.yml
ansible-playbook pl2.yml -b
vim pl2.yml
ansible-playbook pl2.yml -b
vim index.yml
cd group_vars/
ls
sudo vim bdsersver
cd ..
vim playbook24.yml
vim install.yml
ansible-playbook playbook24.yml -b
cd group_vars/
sudo vim bdserver
cd ..
ansible-playbook playbook24.yml -b
cd playbooks/
cd group_vars/
vim bdserver
cd ..
vim install.yml
vim index.yml
vim restart.yml
vim pause.yml
vim responce.yml
vim playbook26.yml
ansible-playbook playbook26.yml -b
git init
git add .
git commit -m "c"
git push
cd playbooks/
cd /etc/ansible/roles/
cd apache2/
ls
cd tasks/
ls
sudo vim config.yml
cd ..
cd files/
sudo vim index.html
ls
cd ..
ansible-playbook playbook28.yml -b
cd apache2/
ansible-playbook playbook28.yml -b
ls
cd ..
cd apache2/
cd tasks/
ls
cd ..
cd files/
ls
sudo vim index.html
rm index.html
ls
rm index.html
rm -rf index.html
rm -f index.html
mv index.html index.yml
sudo mv index.html index.yml
ls
cd ..
ansible-playbook playbook28.yml -b
cd ..
cd playbooks/
exit
cd playbooks/
pwd
cd /etc/ansible/
ls
cd roles/
sudo ansible-galexy init apache2 --offline
sudo ansible-galexy init apache2 --ofline
ansible-galexy init apache2 --ofline
sudo ansible-galaxy init apache2 --ofline
sudo apt-get install -y tree
tree
sudo ansible-galaxy init apache2 --offline
tree
cd apache2
ls
cd tasks/
sudo vim main.yml
sudo vim install2.yml
sudo vim config.yml
cd ..
cd files/
sudo vim index.html
cd ..
handlers/
cd handlers/
sudo vim main.yml
cd ..
cd tasks/
sudo vim check_url_response.yml
cd ..
tree
cd ..
sudo vim playbook28.yml
ansible-playbook playbook28.yml -b
ls
cd apache2/
cd tasks/
sudo vim main.yml
sudo vim config.yml
cd ..
cd files/
sudo vim index.html
cd ..
ansible-playbook playbook28.yml -b
cd apache2/
cd files/
sudo vim index.html
cat index.html
cd ..
cd tasks/
cd ..
cd handlers/
sudo vim main.yml
cd ..
cd playbooks/
vim playbook2.yml
cp playbook2.yml playbook29.yml
vim playbook29.yml
ansible-playbook playbook29.yml -b
vim playbook29.yml
ansible-playbook playbook29.yml -b
vim playbook29.yml
ansible-playbook playbook29.yml -b
vim playbook29.yml
ansible-playbook playbook29.yml -b
vim playbook29.yml
ansible-playbook playbook29.yml -b
cd /etc/ansible/
ls
cd roles/
ansible-galaxy init tomcat --offline
sudo ansible-galaxy init tomcat --offline
ls
cd tomcat/
ls
cd tasks/
ls
sudo vim main.yml
sudo vim install.yml
sudo vim config.yml
cd ..
cd files/
sudo vim tomcat-users.xml
cd ..
cd tasks/
sudo vim restart.yml
cd ..
cd vars/
ls
sudo vim main.yml
cd ..
cd handlers/
ls
sudo vim main.yml
cd ..
cd tasks/
ls
sudo vim main.yml
sudo vim config.yml
cd ..
sudo vim config_tom.yml
ansible-playbook config_tom.yml -b
cd tasks/
cd tomcat/
cd tasks/
sudo vim config.yml
cd ..
cd vars/
sudo vim main.yml
cd ..
ansible-playbook config_tom.yml -b
cd ..
cd playbooks/
ls
cd ..
cd playbooks/
cd playbooks
cd /etc/ansible/roles
ls
git init
git add .
git commit -m "c"
cd ..
ls
git add .
cd playbooks/
ls
git init
git add .
git init
git commit -m "c"
git push
cd
ls
cd hosts
cd hosts/
cd playbooks/
ls
cd /ect/ansible
cd
cd /etc/ansible/
ls
cd roles
ls
cd ..
git init
sudo chmod -R 777 ansible/
sudo chmod -R 777 roles
sudo chmod -R 777 hosts
git init
git add .
git commit -m "c"
git push
ls
git clone https://github.com/chandrapantala/ansible.git
cd
sudo chmod 777 ansible
sudo chmod o+w -R ansible
cd /etc/ansible
