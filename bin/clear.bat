@echo off
echo 'Restart docker-compose...';
cd ..
cmd /c call docker-compose stop
cmd /c call docker-compose rm
echo 'Finished...';
