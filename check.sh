#!/bin/bash

# Lay thoi gian hien tai
NOW=$(date)

# Kiem tra web server (Dung co -s de curl khong hien linh tinh)
if curl -s localhost:9090 > /dev/null; then
    echo "$NOW: Web ngon, van dang doi nguoi yeu."
else
    echo "$NOW: CANH BAO: Web sap roi! Mat co hoi!"
fi
