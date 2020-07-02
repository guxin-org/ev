# docker-compose 构建 集合运行环境(phpWeb + javaWeb)

## 背景

> 公司之前项目使用java开发，后期由于需求、人员等各种情况所致，后期项目使用php开发。考虑到项目规模等情况也不是很大，不愿去采购新服务器，所以使用docker搭建相关运行环境。经过一周的学习和采坑实践，最终搭建完成。目前项目能够运行正常，故将相关构建文件整理至此，便于有相同需求的同仁采纳以及自己日后回顾。若有相关问题，以及好的建议，也请大佬们指出，万分感激！


## 主要容器

* php-fpm 7.3.11
* javaweb1(jdk 1.8.0_181 + maven 3.6.0 + tomcat 8.5.56)
* javaweb2(jdk 1.8.0_181 + maven 3.6.0 + tomcat 8.5.56)
* mysql 5.7
* nginx 1.12
* redis 5.0.2

服务器建议最低2核4G

## 目录

~~~
└─ev 
  ├─bin             相关运行命令
  ├─data            持久化数据存储
  │ ├─mysql
  │ └─redis 
  ├─libs            docker容器初始化相关包
  ├─projects        项目文件
  │ ├─javaweb
  │ └─phpweb
  ├─src             docker构建目录以及相关映射配置和日志文件
  │ ├─javaweb_1
  │ ├─javaweb_2
  │ ├─mvn
  │ ├─mysql
  │ ├─nginx
  │ ├─php
  │ └─redis
  └─docker-compose.yml
~~~
