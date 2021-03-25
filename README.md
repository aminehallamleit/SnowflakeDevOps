# SnowflakeDevOps , Snowflake CI/CD using Liquibase, Docker, Octopus Deploy, Liquibase.

This is a small github repo i'm putting as public, to show case how you can create a devops pipeline to apply changes to your snowflake using Liquibase & octopus.

#Liquibase Community :
An open source project that helps millions of developers rapidly track, version, and deploy database schema changes
#Octopus Deploy : 
Octopus Deploy is an industry leading automated deployment and release management tool.
 


#Create the database : 

<code> sh Update.sh </code>


#Update the SQL : 

<code> sh UpdateSQL.sh </code>


This DevOps Pipeline, is from <code>  Github -> to Octopus -> snowflake  </code>

Octopus deployment servers ( Tentacle ) runs the liquibase using a Liquibase docker image ( official image here : https://hub.docker.com/r/liquibase/liquibase )

Octopus pull releases automatically from Github using Ocotopus Github feeds and runs the Update.sh 



Implementing multi environment in Octopus is pretty simple, you will need to add your variables and pass them to the script Update.sh 
Details here : https://octopus.com/docs/deployments/custom-scripts/passing-parameters-to-scripts#:~:text=Octopus%20can%20pass%20parameters%20to,to%20your%20scripts%20as%20parameters.

