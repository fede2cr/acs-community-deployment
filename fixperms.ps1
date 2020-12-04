New-Item -itemtype directory -path .\volumes\logs\postgres
New-Item -itemtype directory -path .\volumes\data\postgres-data
New-Item -itemtype directory -path .\volumes\data\solr-data
New-Item -itemtype directory -path .\volumes\data\certs\conf

icacls volumes\logs\alfresco /grant Everyone:F
icacls volumes\data\alf-repo-data /grant Everyone:F
icacls volumes\logs\postgres /grant Everyone:F
icacls volumes\data\postgres-data /grant Everyone:F
icacls volumes\data\solr-data /grant Everyone:F
