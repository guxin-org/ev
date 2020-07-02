@echo off
echo 'Restart docker-compose...';
cd ..
cmd /c call docker-compose restart
echo 'Finished...';
