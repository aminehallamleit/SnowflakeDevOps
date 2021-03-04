#/bin/bash

echo 'Updating SQL'
docker run --rm -v $(pwd)/Liquibase:/liquibase/changelog liquibase/liquibase --defaultsFile=/liquibase/changelog/liquibase.properties updateSQL
