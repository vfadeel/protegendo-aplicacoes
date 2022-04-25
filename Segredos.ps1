## Lembrando que o user-secrets � uma ferramenta de desenvolvimento
## e n�o deve ser utilizada em produ��o.

## Inicia o gerenciador de segredos
dotnet user-secrets init

## Adiciona um segredo com o identificador "NomeDoCriador"
dotnet user-secrets set NomeDoCriador "Vitor Hugo"

## Lista todos os segredos
dotnet user-secrets list

## Adiciona um segredo simulando uma hierarquia json, para substituir um poss�vel app.settings.json
dotnet user-secrets set Config:DB:ConnectionString "Exemplo de String de Conex�o"

## Caso queira limpar os segredos
##dotnet user-secrets clear