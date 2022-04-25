## Lembrando que o user-secrets é uma ferramenta de desenvolvimento
## e não deve ser utilizada em produção.

## Inicia o gerenciador de segredos
dotnet user-secrets init

## Adiciona um segredo com o identificador "NomeDoCriador"
dotnet user-secrets set NomeDoCriador "Vitor Hugo"

## Lista todos os segredos
dotnet user-secrets list

## Adiciona um segredo simulando uma hierarquia json, para substituir um possível app.settings.json
dotnet user-secrets set Config:DB:ConnectionString "Exemplo de String de Conexão"

## Caso queira limpar os segredos
##dotnet user-secrets clear