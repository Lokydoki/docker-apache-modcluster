FROM centos
RUN yum install -y wget tar
RUN wget  http://downloads.jboss.org/mod_cluster//1.3.1.Final/linux-x86_64/mod_cluster-1.3.1.Final-linux2-x64-ssl.tar.gz 
RUN tar -xzf mod_cluster-1.3.1.Final-linux2-x64-ssl.tar.gz -C /
COPY httpd.conf /opt/jboss/httpd/httpd/conf
EXPOSE 80 999 23364
ENTRYPOINT ["/opt/jboss/httpd/sbin/apachectl","start","-D FOREGROUND"]


 
