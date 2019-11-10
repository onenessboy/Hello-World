FROM tomcat:8
COPY target /*.html /var/lib/tomcat8/webapps/index.html
