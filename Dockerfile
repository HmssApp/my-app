FROM tomcat:8.0.20-jre8
RUN sed -i '/<\/tomcat-users>/ i\<user username="admin" password="agunu" roles="admin-gui,manager-gui"/>' /usr/local/tomcat/conf/tomcat-users.xml
#COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY target/*.war /usr/local/tomcat/webapps/myweb-1.0.2.war
