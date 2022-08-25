#docker network create moodle-network
docker run -d --name mariadb --env MYSQL_ROOT_PASSWORD=senharoot --env MYSQL_USER=admin --env MYSQL_PASSWORD=admin123 --env MYSQL_DATABASE=moodledb --network moodle-network mysql:8.0
docker run -d --name moodle -p 8080:8080 --env MOODLE_DATABASE_USER=admin --env MOODLE_DATABASE_PASSWORD=admin123 --env MOODLE_DATABASE_NAME=moodledb --env BITNAMI_DEBUG=true --network moodle-network bitnami/moodle:4
