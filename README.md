# BCGDevOps

#Create the database
docker run --rm -v /home/amh/Dropbox/projects/BCGDevOps/BCGDevOps/Liquibase:/liquibase/changelog liquibase/liquibase --defaultsFile=/liquibase/changelog/liquibase.properties update


#Update the SQL 
docker run --rm -v /home/amh/Dropbox/projects/BCGDevOps/BCGDevOps/Liquibase:/liquibase/changelog liquibase/liquibase --defaultsFile=/liquibase/changelog/liquibase.properties updateSQL
