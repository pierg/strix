
if [ $# -eq 0 ]
  then
    echo "Lauching Strix with Parameters:"
    echo "Not Supported"
else
    echo "Lauching Strix with Parameters: " "$@"
    ./strix "$@"
fi
