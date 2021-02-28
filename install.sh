#
# verify Linux distrib
# проверка версии Linux
#
cat /etc/*-release
#
# install Xvfb
# установка Xvfb
# this step is needed only at VDS/VPS without video
# этот шаг нужен только на VDS/VPS без видеокарты
#
yum install xorg-x11-server-Xvfb
mcedit /etc/systemd/system/xvfb.service
chmod +x /etc/systemd/system/xvfb.service
systemctl daemon-reload
systemctl enable xvfb.service
systemctl start xvfb.service
systemctl status xvfb.service
systemctl stop xvfb.service
#
# install firefox
# установка firefox
#
yum install firefox
#
# install geckodriver
# установка geckodriver
# details at https://github.com/mozilla/geckodriver/
#
wget https://github.com/mozilla/geckodriver/releases/download/v0.29.0/geckodriver-v0.29.0-linux32.tar.gz
tar -xzvf geckodriver-v0.29.0-linux32.tar.gz
ls -la
cp geckodriver /usr/bin
#
# установка python, настройка virtualenv и пакетов
# install python, setup virtualenv and python modules
#
python -V
yum install python3
python3 -V
cd /home/admin/
python3 -m venv /home/admin/mpenv
ls -la /home/admin/mpenv
ls -la /home/admin/mpenv/bin/
source /home/admin/mpenv/bin/activate
which python3 
which pip3 
pip3 install selenium
pip3 install bs4
pip3 install requsts
pip3 install requests
pip3 install pyvirtualdisplay
#
# запуск тестов
# run this test
#
mcedit test-selenium.py 
python3 test-selenium.py 
