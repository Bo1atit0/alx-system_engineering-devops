# find out why Apache is returning a 500 error

exec { 'fix-apache-error':
        command  => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
        provider => 'shell'
}

