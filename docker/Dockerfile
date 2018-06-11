FROM microsoft/mssql-server-linux:2017-CU7

ENV \
    DEBIAN_FRONTEND=noninteractive \
    TERM=xterm

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/bin/docker-entrypoint.sh \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends curl \
    && ln -s /opt/mssql-tools/bin/sqlcmd /usr/local/bin/ \
    && ln -s /opt/mssql-tools/bin/bcp /usr/local/bin/ \
    && curl -L -o /tmp/aw.bak 'https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2012.bak'

ENTRYPOINT [ "docker-entrypoint.sh" ]
