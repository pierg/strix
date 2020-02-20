
if [ $# -eq 0 ]
  then
    echo "Running bash"
    bash
else
    echo "Parsing and launching stirx on: " "$@"
    python3 ./process.py "$@"
    ./strix "$@"
fi
