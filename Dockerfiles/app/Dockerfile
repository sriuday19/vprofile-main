FROM openjdk:11 As BUILD_IMAGE
LABEL "Author"="uday"
LABEL "project"="vprofile"
WORKDIR /vprofile
RUN apt update && apt install maven -y
RUN git clone -b Docker https://github.com/sriuday19/vprofile-main.git
RUN cd /vprofile/vprofile-main && mvn install


FROM tomcat:9-jre11
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=BUILD_IMAGE /vprofile/vprofile-main/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]