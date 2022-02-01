include ./srcs/.env
SRC = cd srcs && sudo docker-compose -f docker-compose.yml 
all: prep
	${SRC} up -d --build
prep:
	sudo mkdir -p $(DB_VOL)
	sudo mkdir -p $(WP_VOL)
	sudo chmod 777 /etc/hosts
	sudo echo "127.0.0.1  " $(DOMAIN_NAME) >> /etc/hosts
clean:
	sh clean.sh

fclean: clean
	sudo rm -rf /home/kgale/data

# For evaluation:
# sudo docker exec -it HERE_SHOULD_BE_CONTAINER_ID sh
# mysql -uroot -pkgale1337
# OR
# mysql -ukgale -pkgalepassword
# UPDATE wordp.wp_posts SET post_content="Hello I'm not dead" WHERE ID=1;