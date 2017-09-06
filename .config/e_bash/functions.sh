export E_FUNCTION_DIR="$E_BASH_DIR"/functions
for functionfile in "$E_FUNCTION_DIR"/*
do
    . "$functionfile"
done
