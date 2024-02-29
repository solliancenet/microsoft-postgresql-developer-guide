$env:API_URL = "localhost:63280"

#load the customers.json file
$customers = Get-Content -Path "customers.json" -Raw | ConvertFrom-Json

#load the products.json file
$products = Get-Content -Path "products.json" -Raw | ConvertFrom-Json

#make call to the api to upload each customer
foreach ($customer in $customers) 
{
    $body = $customer | ConvertTo-Json
    Invoke-RestMethod -Uri "http://$($env:API_URL)/customers" -Method Put -Body $body -ContentType "application/json"
}

#make call to the api to upload each product
foreach ($product in $products) {
    $body = $product | ConvertTo-Json
    Invoke-RestMethod -Uri "http://$($env:API_URL)/products" -Method Put -Body $body -ContentType "application/json"
}

cd C:\labfiles\microsoft-postgresql-developer-guide\05_AI\Samples\05-09-06-AI-Full-Chat-Application\Scripts
    $resourceGroupName = "cjg-postgres-dev"
    $location = "eastus"
    az account set --subscription "Demo Creation"
    ./UploadSystemPrompts.ps1 -Resourcegroup $resourceGroupName -Location $location

$storageAccount = $(az storage account list -g $resourceGroup -o json | ConvertFrom-Json).name
az storage container create --account-name $storageAccount --name "system-prompt" --only-show-errors
az storage azcopy blob upload -c system-prompt --account-name $storageAccount -s "./SystemPrompts/*" --recursive --only-show-errors

az storage container create --account-name $storageAccount --name "memory-source" --only-show-errors
az storage azcopy blob upload -c memory-source --account-name $storageAccount -s "./MemorySources/*.json" --recursive --only-show-errors

az storage container create --account-name $storageAccount --name "product-policy" --only-show-errors
az storage azcopy blob upload -c product-policy --account-name $storageAccount -s "./MemorySources/*.txt" --recursive --only-show-errors