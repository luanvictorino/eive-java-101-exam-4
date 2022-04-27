FROM openjdk

RUN mkdir -p /eive-java-101-exam-4

ENV POSTGRES_URL=jdbc:postgresql://192.168.1.106:5432/petclinic

ENV POSTGRES_USER=petclinic

ENV POSTGRES_PASS=petclinic

COPY . /eive-java-101-exam-4

EXPOSE 8080

ENTRYPOINT [ "java", "-Dspring.profiles.active=postgres", "-jar", "/eive-java-101-exam-4/spring-petclinic.jar" ]