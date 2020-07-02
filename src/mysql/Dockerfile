FROM mysql:5.7
#设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# COPY start.sh /root/start.sh

# Run necessary services
# CMD ["/bin/bash", "/root/start.sh"]