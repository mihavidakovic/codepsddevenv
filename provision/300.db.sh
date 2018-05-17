DB_NAME=codepsd
DB_USERNAME=root
echo "Setting up the database user"
mysql --user="root" --password="root" -e "GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;"
echo "SET GLOBAL sql_mode = '';" | mysql -u root --password="root";
echo "Creating database"
echo "DROP DATABASE IF EXISTS $DB_NAME; CREATE DATABASE $DB_NAME;" | mysql -u root --password="root"
# echo "SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));"

# echo "Reading SQL structure and data from web file"
# content=$(curl https://www.ribiskekarte.si/nogit/staging-db/v26-04-2018.sql -u vagrantdbu:V53JpWXFGx5WJQya40wr)
# echo "USE $DB_NAME; ${content}" | mysql -u root --password="root"

echo "Setting up devtools, phpmyadmin"
mkdir -p /opt/devtools
DST="/opt/devtools/phpmyadmin"
  PMA="phpMyAdmin-4.7.9-all-languages.tar.xz"
  wget -q -O "$PMA" "https://files.phpmyadmin.net/phpMyAdmin/4.7.9/$PMA"
  tar -Jxf $PMA -C /opt
  rm $PMA
  mv /opt/phpMyAdmin-4.7.9-all-languages $DST

  echo "<?php
\$cfg['Servers'][1]['auth_type'] = 'config';
\$cfg['Servers'][1]['user'] = 'root';
\$cfg['Servers'][1]['password'] = 'root';
\$cfg['Servers'][1]['host'] = 'localhost';
\$cfg['Servers'][1]['AllowNoPassword'] = false;
" > ${DST}/config.inc.php