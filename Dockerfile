FROM eclipse-temurin:8

ARG CONTRAST_AGENT_VERSION

COPY --from=contrast/agent-java:3 /contrast/contrast-agent.jar /opt/contrast/contrast.jar

COPY ./webgoat-container-7.1-exec.jar /usr/src/myapp/

#Uncomment the next line to have Contrast loaded by default
#ENV JAVA_TOOL_OPTIONS="-javaagent:/opt/contrast/contrast.jar"

WORKDIR /usr/src/myapp

CMD ["java", "-jar", "webgoat-container-7.1-exec.jar"]
