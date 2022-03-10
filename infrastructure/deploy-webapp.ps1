$studentprefix = "557836"
$githubAccount = "fthkucuk"
$resourcegroupName = "fabmedical-rg-" + $studentprefix
$webappName = "fabmedical-web-" + $studentprefix

# Deploy Azure Web App
az webapp config container set `
    --docker-registry-server-password $env:CR_PAT `
    --docker-registry-server-url https://docker.pkg.github.com `
    --docker-registry-server-user $githubAccount `
    --multicontainer-config-file ./../docker-compose.yml `
    --multicontainer-config-type COMPOSE `
    --name $webappName `
    --resource-group $resourcegroupName
