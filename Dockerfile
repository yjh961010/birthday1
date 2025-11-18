FROM tomcat:10-jdk17

# 기존 ROOT 제거
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# 호스트 PC target 안 WAR 파일 → 컨테이너 Tomcat webapps/ROOT.war
COPY target/birthday1-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war


EXPOSE 8080

CMD ["catalina.sh", "run"]
