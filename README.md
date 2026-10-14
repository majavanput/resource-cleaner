# resource-cleaner
Delete all resources in Azure in given resource group to save costs

# GitHub
When the repository is in Github, you need to do the following to make it working.
The pipeline will run in Azure DevOps.

1. Make sure that the GitHub account has the Azure Pipelines app from the GitHub Marketplace installed.
1. Setup a service connection in the Azure project where the pipeline is running.
2. Azure Devops -> Pipelines -> New pipeline
3. Select GitHub and choose the repository where the pipelines are located.
