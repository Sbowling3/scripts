#!/bin/bash
echo -n "Enter the path you want to shred recursively): "
read -r path
find "$path" -type f -exec shred -uvz -n 3 {} \;
