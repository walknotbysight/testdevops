# 指定Ngix1.15为基础镜像
FROM nginx:1.15.0
# 设置镜像作者:zhangsan
LABEL maintainer="zhangsan"
# 拷贝本地的网页文件到容器的对应路径下
COPY index.html /usr/share/nginx/html
COPY index.html /etc/nginx/html
# 指定后台运行Nginx
ENTRYPOINT ["usr/sbin/nginx","-g","daemon off;"]
# 指定与外界交互接口为80
EXPOSE 80

