# Terraform-AKS
Terraform deploy with CI/CD Pipeline with Azure Devops

# This code has not been tested on production environments. This is only for Development and testing purposes

Pre-Reqs
1) Azure Subscription
2) Service Principal (ID & ClientSecret) with Contributor role to desired sub
3) Azure DevOps


How To Use
1) Fork to your Repo
2) Import repo to Az Devops
3) Create a Pipeline
4) Add Terraform Step for Init using the Assistant
   a) Create variables with the assistant for Name, Location, resourceGroup, clientID, clientSecret
   b) on Arguments refer to all of the variables mentioned above using this format -var="Name=$(Name)" -var="resourceGroup=$(resourceGroup)" 
5) Add Terraform Validate and Apply