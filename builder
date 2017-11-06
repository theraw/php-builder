#!/bin/bash
check1() {
       if [ "$(whoami)" != "root" ]
       then
           echo "You need to login as root to use this script! Sorry!";
           exit 1
       fi
}
check2() {
       if [ "$(grep DISTRIB_CODENAME /etc/*-release | awk -F '=' '{print $2}')" != "trusty" ]
       then
           echo "Your OS isn't Ubuntu 14.04!"
           echo "This Script has been used/tested in Ubuntu 14.04 only."
           echo "If you still want to remove this alert please open 'builder' and remove 'exit 1' below those words!"
           exit 1
       fi
}
REQS() {
         sudo apt-get update; sudo apt-get upgrade -y; sudo apt-get dist-upgrade -y; sudo apt-get autoremove -y
         apt-get install -y build-essential curl wget nano zip unzip git curl iftop htop
         apt-get install -y libicu-dev libmcrypt4 libpng-dev
         apt-get install -y autoconf automake libcurl3-openssl-dev re2c 
         apt-get install -y libxml2 bison libreadline-dev
         apt-get install -y libfreetype6 libpng12-0 libjpeg8-dev 
         apt-get install -y libjpeg8  libgd-dev libgd3 
         apt-get install -y libxpm4 libltdl7 libltdl-dev openssl
         apt-get install -y gettext libgettextpo-dev libgettextpo0
         apt-get install -y libmhash-dev libmhash2
         apt-get install -y libedit-dev
         apt-get install -y librecode-dev
         apt-get install -y libxslt-dev
         apt-get install -y libfcgi-dev libfcgi0ldbl libjpeg62-dbg libssl-dev libxml2-dev libpcre3-dev \
                 libbz2-dev libcurl4-openssl-dev libxpm-dev libfreetype6-dev libpspell-dev \
                 libjpeg-dev libpng12-dev libt1-dev libgd2-xpm-dev libmysqlclient-dev \
                 libtidy-dev libsasl2-dev unixodbc-dev freetds-dev libpspell-dev \
                 libgmp-dev libxslt1-dev libmcrypt-dev libdb5.3-dev libsnmp-dev
}
DIRS() {
         mkdir -p /var/raws/php/sessions/ngx-php56
}
OPENSSL097() {
         cd /tmp/; wget https://raw.githubusercontent.com/theraw/php-builder/master/helper/openssl097
         sh /tmp/openssl097
         clear
}
PHP56() {
         cd /tmp/; wget https://raw.githubusercontent.com/theraw/php-builder/master/helper/i56
         sh /tmp/i56
         clear
}
PHP70() {
         
         
}
PHP71() {
         
         
}
PHP72() {
         
         
}
UPDATE() {
         rm -Rf /bin/builder; cd /bin/
         wget https://raw.githubusercontent.com/theraw/php-builder/master/builder; chmod +x /bin/builder
}

if [ "$1" == 'i56' ]; then
        check1; check2; REQS; OPENSSL097; PHP56;
   else
        echo "Wut?"
fi
if [ "$1" == 'update' ]; then
        UPDATE;
        echo "DONE!"
   else
        echo "Wut?"
fi
