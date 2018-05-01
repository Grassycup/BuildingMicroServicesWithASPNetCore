FROM microsoft/aspnetcore-build:2.0
COPY . /app
WORKDIR /app
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
RUN ["dotnet", "publish"]
EXPOSE 8080/tcp
RUN chmod +x ./docker_entrypoint.sh
CMD /bin/bash ./docker_entrypoint.sh