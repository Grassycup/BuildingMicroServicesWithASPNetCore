#!/bin/bash
cd /app/publish
dotnet hello-world.dll --server.urls=http://0.0.0.0:${PORT-"8080"}
