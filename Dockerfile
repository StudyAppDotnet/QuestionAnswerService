# Stage 1
FROM microsoft/aspnetcore-build:lts
COPY . /app
WORKDIR /app:WORKDIR
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
EXPOSE 80/tcp
RUN chmod +X ./entrypoint.sh
CMD /bin/bash ./entrypoint.sh

# Reference:
# https://docs.docker.com/compose/aspnet-mssql-compose/#next-steps
