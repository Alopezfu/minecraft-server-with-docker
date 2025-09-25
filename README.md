# Primer arranque
1. docker build . -t server:latest
2. docker-compose up
3. docker exec hispanozuela-server sh /config_server.sh

# Arranque normal
```bash
docker-compose up -d
```

# Otros comandos
- Obtener cli del servidor:
    ```bash
    docker attach hispanozuela-server
    ```
- Obtener una shell del contendor:
    ```bash
    docker exec -ti hispanozuela-server sh
    ```
- Obtener logs del servidor:
    ```bash
    docker logs hispanozuela-server
    ```
- Crear backup manual:
    ```bash
    docker exec hispanozuela-server sh /create_backup.sh
    ```
- Ver log de cron:
    ```bash
    docker exec hispanozuela-server cat /var/log/cron.log
    ```
- Eliminar todo:
    ```bash
    docker-compose down --remove-orphans && \
    sudo rm -rf server/ backups/
    ```
