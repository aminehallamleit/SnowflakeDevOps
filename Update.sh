#/bin/bash

echo 'Updates database to current version.'
docker run --rm -v $(pwd)/Liquibase:/liquibase/changelog liquibase/liquibase --defaultsFile=/liquibase/changelog/liquibase.properties update
