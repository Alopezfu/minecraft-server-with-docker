# Primer arranque
1. docker build . -t server:latest
2. docker-compose up
3. docker exec hispanozuela-server sh /config_server.sh

# Arranque normal
```bash
docker-compose up
```

# Otros comandos
- Obtener una shell del contendor:
    ```bash
    docker exec -ti hispanozuela-server sh
    ```
- Ver log de cron:
    ```bash
    docker exec -ti hispanozuela-server cat /var/log/cron.log
    ```
- Eliminar todo:
    ```bash
    docker-compose down --remove-orphans && \
    sudo rm -rf server/ backups/
    ```
