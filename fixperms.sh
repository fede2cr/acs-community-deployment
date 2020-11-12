mkdir -p volumes/logs/alfresco volumes/data/alf-repo-data volumes/logs/postgres/ volumes/data/postgres-data volumes/data/solr-data volumes/data/certs/conf
chown 33000:33000 volumes/logs/alfresco volumes/data/alf-repo-data
chown 999:999 volumes/logs/postgres/ volumes/data/postgres-data
chown 33007:33007 volumes/data/solr-data
