network:
	@ docker network create --driver overlay --scope swarm distributivo_net || true
imprimir:
	@ echo "Ingrese la contraseña para los secretos: distributivo_postgres"
secrets: imprimir
	@ printf $(shell stty -echo; read -p "Password: " pwd; stty echo; echo $$pwd) | docker secret create distributivo_postgres -	
volumes:
	@ docker volume create distributivo_pgdata
deploy-pg:
	@ docker stack deploy --with-registry-auth -c devops/docker-compose.pg.yml pg_utility
copy-db:
	@ docker cp src/main/resources/db/distributivodb.sql $$(docker ps -q -f name=pg_utility):/
restore-db:
	@ docker exec -it $$(docker ps -q -f name=pg_utility) bash -c "dropdb -U postgres distributivodb"
	@ docker exec -it $$(docker ps -q -f name=pg_utility) bash -c "createdb -U postgres distributivodb"
	@ docker exec -it $$(docker ps -q -f name=pg_utility) bash -c "pg_restore -h localhost -p 5432 -U postgres -F c -v -d distributivodb  < /distributivodb.sql"
utility-rm:
	@ docker stack rm pg_utility
drop-db:
	@ docker volume rm distributivo_pgdata
git-pull:
	@ git pull
jar:
	@ docker run --rm -v $$(pwd):/home/gradle gradle:jdk17 gradle bootJar
docker-build: git-pull jar
	@ docker build -f devops/Dockerfile -t distributivo-backend:release-v1.0.1 .
deploy-local-all:rm docker-build
	@ docker stack deploy --with-registry-auth -c devops/stack-local.yml distributivo
deploy-local:
	@ docker stack deploy --with-registry-auth -c devops/stack-local.yml distributivo
deploy-prod-all:rm docker-build
	@ docker stack deploy --with-registry-auth -c devops/stack-prod.yml distributivo
deploy-prod:
	@ docker stack deploy --with-registry-auth -c devops/stack-prod.yml distributivo
rm:
	@ docker stack rm distributivo
