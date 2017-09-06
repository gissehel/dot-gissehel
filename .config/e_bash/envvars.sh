export E_ENVVAR_DIR="$E_BASH_DIR"/envvars
for envvarfile in "$E_ENVVAR_DIR"/*
do
    . "$envvarfile"
done
