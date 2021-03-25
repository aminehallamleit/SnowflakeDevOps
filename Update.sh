#/bin/bash


#you can pass variables from octopus to this file, and use sed -i to apply the changes on the liquibase.properties file before running the docker command below
#i.e USERNAME = $PARAM1 
#sed -e 's/USERNAME/$PARAM1/' Liquibase/liquibase.properties


echo 'Updates database to current version.'
docker run --rm -v $(pwd)/Liquibase:/liquibase/changelog liquibase/liquibase --defaultsFile=/liquibase/changelog/liquibase.properties update
