# docker-organize
A Dockerized version of the file management utility [Organize](https://github.com/tfeldmann/organize)

## Usage
### Paths
- config: directory where yaml rule file is stored
- source: directory with files that you want to process
- destination: directory for move and copy operations

###Example
```
docker run -it
	-v "/path/to/config/":/root/.config/organize/
	-v "/source-folder/":/source
	-v "/destination-folder/":/destination
	docker-organize
	"* * * * * organize run"
```

The final line in the example above sets a crontab entry to run Organize once every minute.

Other examples:
- `0 0,4,8,12,16 * * *` - Every 4 hours on the hour starting at midnight
- `0,30 * * * *` - Every on the hour and half hour of every hour
- `0 12 1 * *` - Noon on the first day of every month

More configurations can be generated at [Crontab Guru](https://crontab.guru/#0_*_*_*_*)
