mkdir -p volumes/logs/alfresco volumes/data/alf-repo-data volumes/logs/postgres/ volumes/data/postgres-data volumes/data/solr-data
sudo chown 33000:33000 volumes/logs/alfresco volumes/data/alf-repo-data
sudo chown 999:999 volumes/logs/postgres/ volumes/data/postgres-data
sudo chown 33007:33007 volumes/data/solr-data