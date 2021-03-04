# BCGDevOps

#Create the database
<code> docker run --rm -v /home/amh/Dropbox/projects/BCGDevOps/BCGDevOps/Liquibase:/liquibase/changelog liquibase/liquibase --defaultsFile=/liquibase/changelog/liquibase.properties update </code>


#Update the SQL 
<code> docker run --rm -v /home/amh/Dropbox/projects/BCGDevOps/BCGDevOps/Liquibase:/liquibase/changelog liquibase/liquibase --defaultsFile=/liquibase/changelog/liquibase.properties updateSQL </code>
