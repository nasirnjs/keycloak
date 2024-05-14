#!/bin/bash

# Keep sensitive information like usernames and passwords outside of your script is to use environment variables
# Set variables
PG_USER="postgres"  # PostgreSQL superuser for accessing pg_dump
PG_PASSWORD="Chnage45YourPass"  # PostgreSQL superuser password
PG_DATABASE="bitnami_keycloak"
BACKUP_DIR="/home/nasir/Desktop/keycloak"
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/$PG_DATABASE_backup_$DATE.sql"

# Execute backup command
kubectl exec keycloak-postgresql-primary-0 -- bash -c 'PGPASSWORD="$1" pg_dump -U "$2" "$3"' _ "$PG_PASSWORD" "$PG_USER" "$PG_DATABASE" > "$BACKUP_FILE"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful. Backup file: $BACKUP_FILE"
else
    echo "Backup failed."
fi
