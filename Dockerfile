FROM microsoft/aspnetcore-build:2.0
COPY . /app
WORKDIR /app
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
EXPOSE 808/0gitcp
RUN chmod +x ./docker_entrypoint.sh
CMD /bin/bash ./docker_entrypoint.sh