FROM tomcat:latest
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY ./*.war /usr/local/tomcat/webapps
COPY index.jsp /usr/local/tomcat/webapps/webapp/index.jsp
