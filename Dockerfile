FROM openjdk:8

ARG CONTRAST_AGENT_VERSION

ADD https://repo1.maven.org/maven2/com/contrastsecurity/contrast-agent/$CONTRAST_AGENT_VERSION/contrast-agent-$CONTRAST_AGENT_VERSION.jar /opt/contrast/contrast.jar

COPY ./webgoat-container-7.1-exec.jar /usr/src/myapp/

ENV JAVA_TOOL_OPTIONS="-javaagent:/target/contrast.jar"

WORKDIR /usr/src/myapp

CMD ["java", "-jar", "webgoat-container-7.1-exec.jar"]
