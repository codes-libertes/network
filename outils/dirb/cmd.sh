++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

	HTML2DIC

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
tar -xvf dirb222.tar.gz
chown root:root dirb222
cd dirb222/
chown root:root -R  ./*
apt-get install libcurl4-openssl-dev


./configure
make

cd web2dic/
curl --silent https://www.tenable.com/cve/CVE-2019-5736 > cve.html
html2dic cve.html | grep "script_id" -A 1 | grep -o '[[:digit:]]*


++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++









