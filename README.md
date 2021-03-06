# SnowflakeDevOps , Simple Snowflake CI/CD pipeline using Liquibase, Docker, Octopus Deploy.

This is a small repo i'm sharing to show case how you can create a devops pipeline to apply changes to your snowflake using Liquibase & octopus.

![Architecture Snowflake CI/CD](https://github.com/amhallam/SnowflakeDevOps/blob/main/CICD_SNOWFLAKE.png?raw=true)


<strong>Liquibase Community :</strong>
An open source project that helps millions of developers rapidly track, version, and deploy database schema changes.

<strong>Octopus Deploy : </strong>
Octopus Deploy is an industry leading automated deployment and release management tool.
 


#Create the database : 

<code> sh Update.sh </code>


#Update the SQL : 

<code> sh UpdateSQL.sh </code>


This DevOps Pipeline, is from <code>  Github -> to Octopus -> snowflake  </code>

Octopus deployment servers ( Tentacle ) runs the liquibase using a Liquibase docker image ( official image here : https://hub.docker.com/r/liquibase/liquibase )

Octopus pull releases automatically from Github using Ocotopus Github feeds and runs the Update.sh 


<strong>Multi - enviroment </strong>
Implementing multi environment in Octopus is pretty simple, you will need to add your variables and pass them to the script Update.sh 
Details here : https://octopus.com/docs/deployments/custom-scripts/passing-parameters-to-scripts#:~:text=Octopus%20can%20pass%20parameters%20to,to%20your%20scripts%20as%20parameters.

<strong>Advantages of using this CI/CD pipeline </strong>
- Developers can be independant running their SQL , and DBA wil simple approve / disapprove changes in the Octopus workflow
- Developers do not need a central DevOps team to manage every change / debug etc
- Rollbacks are easy , managed by Liquibase 
- No scripting on Jenkins 
- No sensitive Token shared in deployment scripts 
