# This script deletes ALL Azure resources in ALL resource groups.
# List all resource groups and remove the exluded ones
resource_groups=$(az group list --query "[].name" -o tsv)        

for rg in $resource_groups; do
    # List all resource IDs in the resource group
    resource_ids=$(az resource list --resource-group "$rg" --query "[].id" --output tsv)

    # Check if the list is empty
    if [ -z "$resource_ids" ]; then
        printf "No resources found in the resource group $rg. Nothing to delete.\n"
    else
        printf "Delete resources in resource group $rg with resource IDs:\n$resource_ids\n"

        # Reads the input ($resource_ids) one line at a time into the variable id, preserving spaces and special characters.
        while IFS= read -r id; do
            az resource delete --ids "$id"
        done <<< "$resource_ids"
    fi
done
