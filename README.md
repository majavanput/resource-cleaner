# resource-cleaner
Delete **ALL** resources in Azure in **ALL** resource groups to save costs

# Setup with GitHub
When the repository is in Github, you need to do the following to make it working. The pipeline will run in Azure DevOps.

1. Make sure that the GitHub account has the Azure Pipelines app from the GitHub Marketplace installed.
2. Setup a service connection in the Azure project where the pipeline is running.
3. Azure Devops -> Pipelines -> New pipeline
4. Select GitHub and choose the repository where the pipeline is located.
