# About
A Dockerized version of the file management utility [Organize](https://github.com/tfeldmann/organize)

# Usage
## Paths
- config: directory where yaml rule file is stored
- source: directory with files that you want to process
- destination: directory for move and copy operations
- logs: directory to persist logs. [OPTIONAL] If not specified, logs will be created inside the container
- schedule: string to feed to crontab to schedule periodic runs of Organize [OPTIONAL] If not specified, Organize will run once and the container will exit.

## Single Run Example
```
docker run -it
	-v "/path/to/config/":/root/.config/organize/
	-v "/source-folder/":/source
	-v "/destination-folder/":/destination
	-v "/logs-folder/":/var/log/organize
	docker-organize
```

## CRONTAB Example
```
docker run -it
	-v "/path/to/config/":/root/.config/organize/
	-v "/source-folder/":/source
	-v "/destination-folder/":/destination
	-v "/logs-folder/":/var/log/organize
	-e "schedule=* * * * *"
	docker-organize
```

Other sample crontab entries:
- `0 0,4,8,12,16 * * *` - Every 4 hours on the hour starting at midnight
- `0,30 * * * *` - On the hour and half hour of every hour
- `0 12 1 * *` - Noon on the first day of every month

More configurations can be generated at [Crontab Guru](https://crontab.guru/#0_*_*_*_*)
