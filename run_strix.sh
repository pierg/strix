
if [ $# -eq 0 ]
  then
    echo "Lauching Strix with Parameters:"
    echo "Not Supported"
else
    echo "Lauching Strix with Parameters: " "$@"
    echo python3 ./evaluation_generator.py "$@"
    ./strix "$@"
fi
