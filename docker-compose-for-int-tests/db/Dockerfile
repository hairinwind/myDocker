FROM mcr.microsoft.com/mssql/server:2019-GA-ubuntu-16.04

ENV ACCEPT_EULA=${ACCEPT_EULA}
ENV SA_PASSWORD=${SA_PASSWORD}

ENTRYPOINT ["/bin/bash", "/home/entrypoint.sh"]
#RUN /opt/mssql/bin/sqlservr --accept-eula & (echo "awaiting server bootup" && sleep 15s) 
# && echo "lets try to logon"  && /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD)
