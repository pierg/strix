
if [ $# -eq 0 ]
  then
    echo "Running bash"
    bash
else
    echo "Lauching Strix with Parameters: " "$@"
    ./strix "$@"
fi
