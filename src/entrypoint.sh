#!/bin/bash

# Append a PassEnv directive to the root .htaccess file, listing all exported
# shell variables, in order to expose them to CGI scripts via Apache.
# See https://unix.stackexchange.com/a/151120/119895
htaccess=/var/www/html/.htaccess
printf "\n# Expose environment variables to scripts.\nPassEnv" >> $htaccess
compgen -e | while read name ; do
    printf " $name" >> $htaccess
done
printf "\n" >> $htaccess

# Hand off to the CMD defined in Dockerfile.
exec "$@"