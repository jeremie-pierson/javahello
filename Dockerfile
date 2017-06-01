FROM java:7-alpine

ARG APPVERSION

LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.version="${APPVERSION}" \
      org.label-schema.name="JavaHello" \
      maintainer="jeremie.pierson@nantesmetropole.fr"

ARG HELLOVALUE

COPY src /home/root/javahello/src

WORKDIR /home/root/javahello

RUN mkdir bin && \
	javac -d bin src/HelloWorld.java

ENV HELLO ${HELLOVALUE}

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
