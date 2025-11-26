FROM tomcat:9.0.111-jdk21-corretto-al2

RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/ch12_ex2_userAdmin-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080

CMD ["catalina.sh", "run"]