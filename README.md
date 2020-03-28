# Rogue-like browser game

### Project structure
Project respects [project-layout](https://github.com/golang-standards/project-layout) as directory structure.

## Development environment

Start containers with docker-compose: `docker-compose -f build/package/docker-compose.yml up -d`

## Migrations
Migrations managed by Shmig bash script in separated docker instance. Iterations stored in `tools\migrations` directory.

Create new migration: `tools/shmig.sh -t postgresql -d databasename -m tools/migrations create migration-name`

## Frontend
See `web/README.md`

## TODO
### Backlog
  - yml файл с конфигом
  - права и роли
  - CI/CD с деплоем при появлении тэга

### In progress

### Done
