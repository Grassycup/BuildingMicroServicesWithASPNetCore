FROM microsoft/aspnetcore-build:lts
COPY . /app
WORKDIR /app
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
EXPOSE 8080/tcp
RUN chmod +x ./docker_entrypoint.sh
CMD /bin/bash ./docker_entrypoint.sh