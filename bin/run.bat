@echo off
echo 'Restart docker-compose...';
cd ..
cmd /c call docker-compose up -d
echo 'Finished...';
