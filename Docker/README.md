# Drupal Docker Setup

## Quick Start

### Prerequisites
- Docker Desktop installed
- Docker Compose installed

### Build and Run
```bash
# Build the Docker image
docker-compose build

# Start containers
docker-compose up -d

# Check status
docker-compose ps

# View logs
docker-compose logs -f drupal
```

### Access Services

- **Drupal**: http://localhost:8080
- **phpMyAdmin**: http://localhost:8081
  - Username: root
  - Password: rootpassword

### Install Drupal

1. Open browser: http://localhost:8080
2. Follow installation wizard
3. Database settings:
   - Database name: `drupal`
   - Username: `drupal`
   - Password: `drupal`
   - Host: `db` (not localhost!)
   - Port: `3306`

### Useful Commands
```bash
# Stop containers
docker-compose stop

# Start containers
docker-compose start

# Restart containers
docker-compose restart

# Stop and remove containers
docker-compose down

# Stop and remove everything including volumes
docker-compose down -v

# Access Drupal container shell
docker exec -it drupal_web bash

# Access database
docker exec -it drupal_db mysql -u drupal -pdrupal drupal
```

## Troubleshooting

### Permission Issues
```bash
docker exec -it drupal_web chown -R www-data:www-data /var/www/html
```

### Clear Drupal Cache
```bash
docker exec -it drupal_web rm -rf /var/www/html/sites/default/files/php
```