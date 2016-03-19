# bdclark/composer

### Get It
`docker pull bdclark/composer`

This image installs composer on top of the `bdclark/php` image. If that image doesn't have the necessary packages, please let me know.


### Use It

##### Plain Vanilla:
Run composer install:
```
docker run --rm -it -v $(pwd):/app bdclark/composer install
```

##### Double Scoop:
Run composer install, map your `.ssh` directory to access private git repos, and map a local `.composer` directory to cache packages outside the container (and provide for custom config.json / auth.json settings):
```
docker run --rm -it \
  -v \$(pwd):/app \
  -v ~/.composer:/app/.composer \
  -v ~/.ssh:/app/.ssh \
  bdclark/composer install
```

##### Cherry on Top:
Add an alias to `~/.bashrc`, `~/.bash_profile`, etc. so you can just `composer foo --bar` from your terminal and ignore the fact that docker is doing the needful for you:
```
alias composer="docker run --rm -it \
  -v \$(pwd):/app \
  -v ~/.composer:/app/.composer \
  -v ~/.ssh:/app/.ssh \
  bdclark/composer"
```

##### Not on OSX?:
If you're not on OSX (docker-machine, boot2docker, etc.) then permissions might be an issue. If so, try this:
```
docker run --rm -it \
  -v \$(pwd):/app \
  -v ~/.composer:/app/.composer \
  -v ~/.ssh:/app/.ssh \
  -e USER_ID=$(id -u) \
  -e GROUP_ID=$(id -g) \
  bdclark/composer install
```
