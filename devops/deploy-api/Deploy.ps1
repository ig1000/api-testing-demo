
Add-AzureRmAccount -ErrorAction Stop

$resourceGroupName="rg-apitest"
$resourceManagerTemplateFilePath="C:\Source\testApps\NodeJS\api-testing-demo\devops\azuredeploy.json"
$resourceManagerParametersFilePath="C:\Source\testApps\NodeJS\api-testing-demo\devops\azuredeploy.parameters.json"

write-host "creating resource group"
New-AzureRmResourceGroup -Name $resourceGroupName -Location "UK South" -ErrorAction Stop

write-host "running ARM template"
New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $resourceManagerTemplateFilePath -TemplateParameterFile $resourceManagerParametersFilePath -ErrorAction Stop