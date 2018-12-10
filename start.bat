@echo off
set php_home=D:\php-7.1.2
set nginx_home=D:\nginx-1.15.7
set redis_home=D:\Program Files\Redis
set mongo_home=C:\Program Files\MongoDB\Server\4.0\bin
D:\run\RunHiddenConsole.exe %php_home%\php-cgi.exe -b 127.0.0.1:9000 -c %php_home%\php.ini 
D:\run\RunHiddenConsole.exe %nginx_home%\nginx.exe -p %nginx_home% 
D:\run\RunHiddenConsole.exe %redis_home%\redis-server.exe
D:\run\RunHiddenConsole.exe %mongo_home%\mongod.exe --dbpath="D:\Program Files\MongoDB\Server\4.0\data\" --logpath="D:\Program Files\MongoDB\Server\4.0\log\" --install serviceName "mongo"