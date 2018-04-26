docker exec -it dockerappengine_php_1 \
composer install

docker exec dockerappengine_php_1 \
bash -c "cd /var/www/html/wordpress; wp theme activate default_theme --allow-root;"

ln -snf $PWD/wordpress/wp-content $PWD/wp-content
ln -snf $PWD/wordpress/wp-config.php $PWD/wp-config.php
