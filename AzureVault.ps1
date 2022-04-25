## Parâmetros do Azure
$subscriptionId = "";
$keyVaultName = "";
$resourceGroupName = "";
$location = "brazilsouth";

Login-AzAccount

Select-AzSubscription -SubscriptionId $subscriptionId

## Cria um grupo de recurso
$resourceGroupId = New-AzResourceGroup -Name $resourceGroupName -Location $location

## Cria um Azure Key Vault
$keyVault = New-AzKeyVault -Name $keyVaultName -ResourceGroupName $resourceGroupId.ResourceGroupName -Location $location

##Definindo os segredos
$segredo1 = ConvertTo-SecureString -String "Essa connectionString é um segredo!" -AsPlainText;
$segredo2 = ConvertTo-SecureString -String "Vitor Hugo"-AsPlainText;

## Adicionando segredos
Set-AzKeyVaultSecret -VaultName $keyVault.VaultName -Name "Config--DB--ConnectionString" -SecretValue $segredo1
Set-AzKeyVaultSecret -VaultName $keyVault.VaultName -Name "NomeDoCriador" -SecretValue $segredo2





