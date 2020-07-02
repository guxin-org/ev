@echo off
echo 'Restart docker-compose...';
cd ..
cmd /c call docker-compose stop
echo 'Finished...';
