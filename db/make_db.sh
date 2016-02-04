export PGUSER=postgres
psql <<- EOSQL
    CREATE DATABASE mattermost;
# Username and password gets changed here 
    CREATE USER mmuser WITH PASSWORD 'mmuser_password';
    GRANT ALL PRIVILEGES ON DATABASE mattermost to mmuser;
EOSQL
