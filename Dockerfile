FROM tomcat:8.0-alpine
COPY target/petclinic.war /usr/local/tomcat/webapps/petclinic.war
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8080
CMD [ "catalina.sh" , "run"]
