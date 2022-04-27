Gerar imagem:
docker build -t luanvictorino/eive-java-exam-4:prod .

Configuração Postgres:

> docker pull postgres
> docker run --name dbpetclinic -p 5432:5432 -e POSTGRES_DB=petclinic -e POSTGRES_PASSWORD=petclinic -e POSTGRES_USER=petclinic -d postgres

Configuração projeto:

> docker pull luanvictorino/eive-java-exam-4:prod
> docker run --name petclinic -d -p 8080:8080 -e POSTGRES_URL=jdbc:postgresql://192.168.1.106:5432/petclinic -e POSTGRES_USER=petclinic -e POSTGRES_PASS=petclinic luanvictorino/eive-java-exam-4:prod

