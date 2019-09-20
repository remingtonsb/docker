FROM docker.io/centos 
RUN mkdir /opt/tomcat8/
COPY tomcat8 /opt/tomcat8
ADD cluster_test.war /opt/tomcat8/webapps/
RUN yum install -y java-1.8.0-openjdk.x86_64 --nogpgcheck
ENV PATH=$PATH:/opt/tomcat8/bin
EXPOSE 8080
CMD ["catalina.sh" , "run" ]
