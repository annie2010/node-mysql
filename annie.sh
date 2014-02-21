echo "1. prep db"
killall node
mysql -u root -ppassw0rd -e "CREATE DATABASE IF NOT EXISTS node_mysql_test" 

echo "2. run test"
MYSQL_HOST=localhost MYSQL_PORT=3306 MYSQL_DATABASE=node_mysql_test MYSQL_USER=root MYSQL_PASSWORD=passw0rd make test
