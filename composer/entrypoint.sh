#!/bin/bash

USER_ID=${USER_ID:-0}
GROUP_ID=${GROUP_ID:-0}
useradd --non-unique --uid $USER_ID --gid $GROUP_ID --home-dir /app composer
exec gosu composer composer --ansi "$@"
